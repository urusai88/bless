import 'package:bless_generator/src/bless_utils.dart';

abstract class BlessEntity {
  const BlessEntity({required this.typeName, required this.argName});

  final String typeName;

  final String argName;

  String get argument;

  String get condition;

  String get expression;

  String get argNameTrimmed => argName.replaceFirst(RegExp(r'^_*'), '');

  String get argNameLowerTrimmed => BlessUtils.toLower(argNameTrimmed);
}

class BlessClassEntity extends BlessEntity {
  const BlessClassEntity({required super.typeName, required super.argName});

  @override
  String get argument => typeName;

  @override
  String get condition => 'this is $typeName';

  @override
  String get expression => '$argNameTrimmed(this as $typeName)';
}

class BlessEnumEntity extends BlessEntity {
  const BlessEnumEntity({
    required super.typeName,
    required super.argName,
    required this.constantName,
  });

  final String constantName;

  @override
  String get argument => '';

  @override
  String get condition => 'this == $typeName.$constantName';

  @override
  String get expression => '$argName()';
}
