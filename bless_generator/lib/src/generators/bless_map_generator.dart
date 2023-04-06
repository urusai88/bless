import 'package:bless_generator/src/bless_utils.dart';
import 'package:bless_generator/src/generators/bless_base_generator.dart';

import '../bless_declaration.dart';

class BlessMapGenerator extends BlessBaseGenerator {
  const BlessMapGenerator();

  @override
  String? generate(BlessDeclaration bless) {
    if (bless.blessEntityList.isEmpty) {
      return null;
    }

    return '''
        ${_map(bless)}
        
        ${_maybeMap(bless)}
        ''';
  }

  String _map(BlessDeclaration bless) {
    final argumentList = <String>[];
    final conditionList = <String>[];
    final expressionList = <String>[];

    for (final entity in bless.blessEntityList) {
      argumentList.add(
        'required T Function(${entity.argument} ${entity.argNameLowerTrimmed}) ${entity.argNameLowerTrimmed}',
      );
      conditionList.add(entity.condition);
      expressionList.add('return ${BlessUtils.toLower(entity.expression)}');
    }

    return '''
      T map<T>({${argumentList.join(', ')},}) {
          ${_generateBlocks(conditionList, expressionList).join(' else ')}

          throw 'Please run "dart run build_runner build -d"';
      }
    ''';
  }

  String _maybeMap(BlessDeclaration bless) {
    final argumentList = <String>[];
    final conditionList = <String>[];
    final expressionList = <String>[];

    for (final entity in bless.blessEntityList) {
      argumentList.add(
        'T Function(${entity.argument} ${entity.argNameLowerTrimmed})? ${entity.argNameLowerTrimmed}',
      );
      conditionList.add(
        '${entity.condition} && ${entity.argNameLowerTrimmed} != null',
      );
      expressionList.add('return ${BlessUtils.toLower(entity.expression)}');
    }

    return '''
      T maybeMap<T>({
        ${argumentList.join(',')},
        required T Function(${bless.typeName}) orElse,
      }) {
        ${_generateBlocks(conditionList, expressionList).join(' else ')}
        else {
          return orElse(this);
        }
    }
    ''';
  }

  List<String> _generateBlocks(
    List<String> conditionList,
    List<String> expressionList,
  ) {
    return List.generate(
      expressionList.length,
      (i) => 'if (${conditionList[i]}) {\n\t${expressionList[i]};\n}',
    );
  }
}
