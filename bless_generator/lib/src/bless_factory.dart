import 'package:analyzer/dart/element/element.dart';
import 'package:bless_generator/src/bless_declaration.dart';
import 'package:bless_generator/src/bless_entity.dart';

class BlessFactory {
  const BlessFactory();

  BlessDeclaration declaration(Element element, LibraryElement library) {
    final subElements = subElementsOf(element, library).toList();
    final constructor = findConstructor(element);

    List<String> genericList = [];
    if (element is TypeParameterizedElement) {
      genericList = element.typeParameters.map((e) => e.name).toList();
    }

    List<BlessEntity> blessEntityList = [];

    if (element is EnumElement) {
      for (final value in element.fields.where((e) => e.isEnumConstant)) {
        blessEntityList.add(
          BlessEnumEntity(
            typeName: element.name,
            argName: value.name,
            constantName: value.name,
          ),
        );
      }
    }

    if (element is ClassElement) {
      for (final subElement in subElements.reversed) {
        blessEntityList.add(
          BlessClassEntity(
            typeName: subElement.name,
            argName: subElement.name,
          ),
        );
      }
    }

    return BlessDeclaration(
      element: element,
      constructor: constructor,
      genericList: genericList,
      typeName: element.name!,
      isEnum: element is EnumElement,
      blessEntityList: blessEntityList,
    );
  }

  ConstructorElement? findConstructor(Element element) {
    List<ConstructorElement>? constructors;
    ConstructorElement? unnamedConstructor;
    if (element is ClassElement) {
      constructors = element.constructors;
      unnamedConstructor = element.unnamedConstructor;
    }
    if (element is EnumElement) {
      constructors = element.constructors;
      unnamedConstructor = element.unnamedConstructor;
    }
    if (unnamedConstructor != null) {
      return unnamedConstructor;
    }
    if (constructors != null && constructors.isNotEmpty) {
      return constructors.first;
    }
    return null;
  }

  Iterable<ClassElement> subElementsOf(
    Element element,
    LibraryElement library,
  ) sync* {
    final klasses = library.units.expand((cu) => cu.classes);
    for (final klass in klasses) {
      final superElements = klass.allSupertypes.map((e) => e.element);
      if (superElements.contains(element)) {
        yield klass;
      }
    }
  }
}
