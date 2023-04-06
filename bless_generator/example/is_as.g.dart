// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, library_private_types_in_public_api, unused_element

part of 'is_as.dart';

// **************************************************************************
// BlessGenerator
// **************************************************************************

extension BaseStateBlessExtension on BaseState {
  bool get isSuccessGuard => this is SuccessGuard;

  bool get isSuccessUser => this is SuccessUser;

  bool get isSuccess => this is Success;

  bool get isLoading => this is Loading;

  bool get isInitial => this is Initial;

  SuccessGuard? get asSuccessGuard =>
      this is SuccessGuard ? this as SuccessGuard : null;

  SuccessUser? get asSuccessUser =>
      this is SuccessUser ? this as SuccessUser : null;

  Success? get asSuccess => this is Success ? this as Success : null;

  Loading? get asLoading => this is Loading ? this as Loading : null;

  Initial? get asInitial => this is Initial ? this as Initial : null;
}

extension SuccessBlessExtension on Success {
  bool get isSuccessGuard => this is SuccessGuard;

  bool get isSuccessUser => this is SuccessUser;

  SuccessGuard? get asSuccessGuard =>
      this is SuccessGuard ? this as SuccessGuard : null;

  SuccessUser? get asSuccessUser =>
      this is SuccessUser ? this as SuccessUser : null;
}

extension BaseState2BlessExtension on BaseState2 {
  bool get isSuccessGuard => this is _SuccessGuard;

  bool get isSuccessUser => this is _SuccessUser;

  bool get isSuccess => this is _Success;

  bool get isLoading => this is _Loading;

  bool get isInitial => this is _Initial;

  _SuccessGuard? get asSuccessGuard =>
      this is _SuccessGuard ? this as _SuccessGuard : null;

  _SuccessUser? get asSuccessUser =>
      this is _SuccessUser ? this as _SuccessUser : null;

  _Success? get asSuccess => this is _Success ? this as _Success : null;

  _Loading? get asLoading => this is _Loading ? this as _Loading : null;

  _Initial? get asInitial => this is _Initial ? this as _Initial : null;
}

extension _SuccessBlessExtension on _Success {
  bool get isSuccessGuard => this is _SuccessGuard;

  bool get isSuccessUser => this is _SuccessUser;

  _SuccessGuard? get asSuccessGuard =>
      this is _SuccessGuard ? this as _SuccessGuard : null;

  _SuccessUser? get asSuccessUser =>
      this is _SuccessUser ? this as _SuccessUser : null;
}

extension StatusEnumBlessExtension on StatusEnum {
  bool get isLoading => this == StatusEnum.loading;

  bool get isSuccess => this == StatusEnum.success;

  bool get isFailure => this == StatusEnum.failure;
}
