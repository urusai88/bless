import 'package:bless_annotation/bless_annotation.dart';

part 'copy_with.g.dart';

@BlessIt.only(copyWith: true)
class EmptyKlass {}

@BlessIt.only(copyWith: true)
class EmptyConstKlass {
  const EmptyConstKlass();
}

@BlessIt.only(copyWith: true)
class EmptyConstKlassExtendsConstKlass extends EmptyConstKlass {
  const EmptyConstKlassExtendsConstKlass();
}

@BlessIt.only(copyWith: true)
class EmptyKlassExtendsConstKlass extends EmptyConstKlass {}

class OneNullable {
  OneNullable({this.a});

  final int? a;
}

@BlessIt.only(copyWith: true)
class OneRequired {
  OneRequired({required this.a});

  final int a;
}

@BlessIt.only(copyWith: true)
class TwoDifferent {
  const TwoDifferent({required this.a, this.b});

  final int a;
  final int? b;
}

@BlessIt.only(copyWith: true)
class Generics<T1, T2> {
  const Generics({required this.a, this.b, required this.c});

  final T1 a;
  final int? b;
  final T2 c;
}
