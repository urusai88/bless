// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, library_private_types_in_public_api, unused_element

part of 'copy_with.dart';

// **************************************************************************
// BlessGenerator
// **************************************************************************

extension EmptyKlassBlessExtension on EmptyKlass {
  EmptyKlass copyWith() {
    return EmptyKlass();
  }
}

extension EmptyConstKlassBlessExtension on EmptyConstKlass {
  EmptyConstKlass copyWith() {
    return const EmptyConstKlass();
  }
}

extension EmptyConstKlassExtendsConstKlassBlessExtension
    on EmptyConstKlassExtendsConstKlass {
  EmptyConstKlassExtendsConstKlass copyWith() {
    return const EmptyConstKlassExtendsConstKlass();
  }
}

extension EmptyKlassExtendsConstKlassBlessExtension
    on EmptyKlassExtendsConstKlass {
  EmptyKlassExtendsConstKlass copyWith() {
    return EmptyKlassExtendsConstKlass();
  }
}

extension OneRequiredBlessExtension on OneRequired {
  OneRequired copyWith({
    int? a,
  }) {
    return OneRequired(
      a: a ?? this.a,
    );
  }
}

extension TwoDifferentBlessExtension on TwoDifferent {
  TwoDifferent copyWith({
    int? a,
    int? b,
  }) {
    return TwoDifferent(
      a: a ?? this.a,
      b: b ?? this.b,
    );
  }

  TwoDifferent copyWithNull({
    bool? b,
  }) {
    return TwoDifferent(
      a: a,
      b: b == true ? null : this.b,
    );
  }
}

extension GenericsBlessExtension<T1, T2> on Generics<T1, T2> {
  Generics copyWith({
    T1? a,
    int? b,
    T2? c,
  }) {
    return Generics(
      a: a ?? this.a,
      b: b ?? this.b,
      c: c ?? this.c,
    );
  }

  Generics<T1, T2> copyWithNull({
    bool? b,
  }) {
    return Generics(
      a: a,
      b: b == true ? null : this.b,
      c: c,
    );
  }
}

extension GenericPropertyBlessExtension on GenericProperty {
  GenericProperty copyWith({
    List<String>? strings,
  }) {
    return GenericProperty(
      strings: strings ?? this.strings,
    );
  }

  GenericProperty copyWithNull({
    bool? strings,
  }) {
    return GenericProperty(
      strings: strings == true ? null : this.strings,
    );
  }
}
