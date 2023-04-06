import 'package:analyzer/dart/element/element.dart';
import 'package:bless_annotation/bless_annotation.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'bless_declaration.dart';
import 'bless_factory.dart';
import 'bless_generators.dart';

class BlessGenerator extends GeneratorForAnnotation<BlessIt> {
  const BlessGenerator(this.options);

  final BuilderOptions options;

  static const copyWithGenerator = CopyWithGenerator();
  static const asIsGenerator = AsIsGenerator();
  static const mapGenerator = BlessMapGenerator();

  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element is! EnumElement && element is! ClassElement && true) {
      throw 'Element must be enum or class';
    }

    final factory = BlessFactory();
    final library = await buildStep.inputLibrary;
    final declaration = factory.declaration(element, library);

    final config = configuration(annotation);

    final copyWith =
        config.copyWith ? copyWithGenerator.generate(declaration) : null;
    final asIs = config.asIs ? asIsGenerator.generate(declaration) : null;
    final map = config.map ? mapGenerator.generate(declaration) : null;

    return extension(declaration, [
      if (copyWith != null) copyWith,
      if (asIs != null) asIs,
      if (map != null) map,
    ]);
  }

  String extension(BlessDeclaration bless, List<String> body) {
    if (body.isEmpty) {
      return '';
    }

    return '''
    extension ${bless.typeName}BlessExtension${bless.generics} on ${bless.typeName}${bless.generics} {
       ${body.join('\n\n')}
    }''';
  }

  BlessIt configuration(ConstantReader reader) {
    return BlessIt(
      asIs: reader.read('asIs').boolValue,
      copyWith: reader.read('copyWith').boolValue,
      json: reader.read('json').boolValue,
      map: reader.read('map').boolValue,
    );
  }
}
