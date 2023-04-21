import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:bless_generator/src/generators/bless_base_generator.dart';

import '../bless_declaration.dart';

class CopyWithGenerator extends BlessBaseGenerator {
  const CopyWithGenerator();

  @override
  String? generate(BlessDeclaration bless) {
    if (bless.constructor == null ||
        bless.isEnum ||
        (bless.element is ClassElement &&
            (bless.element as ClassElement).isAbstract)) {
      return null;
    }

    return '''
    ${_generateCopyWith(bless) ?? ''}
    ${_generateCopyWithNull(bless) ?? ''}
    ''';
  }

  String? _generateCopyWith(BlessDeclaration bless) {
    final argumentList = <String>[];
    final constructList = <String>[];

    for (final param in bless.constructor!.parameters) {
      final argumentType = param.type.getDisplayString(withNullability: false);
      final argumentName = param.name;

      argumentList.add('$argumentType? $argumentName');
      constructList.add('$argumentName: $argumentName ?? this.$argumentName');
    }

    var arguments = '';
    if (argumentList.isNotEmpty) {
      arguments = '{${argumentList.join(',\n')},}';
    }
    var constructorArguments = '';
    if (constructList.isNotEmpty) {
      constructorArguments = '${constructList.join(',\n')},';
    }

    final builder = makeTypeBuilder(bless, argumentList.isEmpty);

    return '''
      ${bless.typeName} copyWith($arguments) {
        return $builder($constructorArguments);
      } 
    ''';
  }

  String? _generateCopyWithNull(BlessDeclaration bless) {
    if (bless.constructor == null || bless.isEnum) {
      return null;
    }

    if (bless.constructor!.parameters.isEmpty) {
      return null;
    }

    final argumentList = <String>[];
    final constructList = <String>[];

    for (final param in bless.constructor!.parameters) {
      final argumentName = param.name;

      if (param.type.nullabilitySuffix == NullabilitySuffix.question) {
        argumentList.add('bool? $argumentName');
        constructList.add(
          '$argumentName: $argumentName == true ? null : this.$argumentName',
        );
      } else {
        constructList.add('$argumentName: $argumentName');
      }
    }

    if (argumentList.isEmpty) {
      return null;
    }

    var arguments = '';
    if (argumentList.isNotEmpty) {
      arguments = '{${argumentList.join(',\n')},}';
    }
    var constructorArguments = '';
    if (constructList.isNotEmpty) {
      constructorArguments = '${constructList.join(',\n')},';
    }
    final builder = makeTypeBuilder(bless, argumentList.isEmpty);

    return '''
      ${bless.typeName}${bless.generics} copyWithNull($arguments) {
        return $builder($constructorArguments);
      } 
    ''';
  }

  String makeTypeBuilder(BlessDeclaration bless, bool argumentListIsEmpty) {
    var builder = '';
    if (bless.constructor!.isConst && argumentListIsEmpty) {
      builder += 'const ';
    }
    builder += bless.typeName;
    if (bless.constructor!.name.isNotEmpty) {
      builder += '.';
      builder += bless.constructor!.name;
    }
    return builder;
  }
}
