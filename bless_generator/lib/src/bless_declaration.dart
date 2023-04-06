import 'package:analyzer/dart/element/element.dart';
import 'package:bless_generator/src/bless_entity.dart';

class BlessDeclaration {
  const BlessDeclaration({
    required this.element,
    this.constructor,
    required this.genericList,
    required this.typeName,
    required this.isEnum,
    required this.blessEntityList,
  });

  final Element element;
  final ConstructorElement? constructor;
  final List<String> genericList;
  final String typeName;
  final bool isEnum;

  bool get isClass => !isEnum;

  final List<BlessEntity> blessEntityList;

  String get generics =>
      genericList.isNotEmpty ? '<${genericList.join(', ')}>' : '';
}
