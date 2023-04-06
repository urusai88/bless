import 'package:bless_generator/src/bless_declaration.dart';
import 'package:bless_generator/src/bless_entity.dart';
import 'package:bless_generator/src/bless_utils.dart';
import 'package:bless_generator/src/generators/bless_base_generator.dart';

class AsIsGenerator extends BlessBaseGenerator {
  const AsIsGenerator();

  @override
  String? generate(BlessDeclaration bless) {
    if (bless.blessEntityList.isEmpty) {
      return null;
    }

    String build<T>(List<BlessEntity> ls, String Function(T e) fn) {
      return ls.whereType<T>().map(fn).join('\n\n');
    }

    // ignore: non_constant_identifier_names
    String Is;
    if (bless.isEnum) {
      Is = build<BlessEnumEntity>(bless.blessEntityList, isEnum);
    } else {
      Is = build<BlessClassEntity>(bless.blessEntityList, isClass);
    }

    // ignore: non_constant_identifier_names
    String? As;
    if (bless.isClass) {
      As = build<BlessClassEntity>(bless.blessEntityList, asClass);
    }

    return [
      Is,
      if (As != null) As,
    ].join('\n\n');
  }

  String isClass(BlessClassEntity e) {
    return '''
      bool get is${BlessUtils.toUpper(e.argNameTrimmed)} => ${e.condition};
    ''';
  }

  String isEnum(BlessEnumEntity e) {
    return '''
      bool get is${BlessUtils.toUpper(e.argNameTrimmed)} => ${e.condition};
    ''';
  }

  String asClass(BlessClassEntity e) {
    return '''
      ${e.typeName}? get as${BlessUtils.toUpper(e.argNameTrimmed)} => this is ${e.typeName} ? this as ${e.typeName} : null;
    ''';
  }
}
