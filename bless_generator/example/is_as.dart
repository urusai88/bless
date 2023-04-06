import 'package:bless_annotation/bless_annotation.dart';

part 'is_as.g.dart';

@BlessIt.only(asIs: true)
enum StatusEnum {
  loading,
  success,
  failure;
}

@BlessIt.only(asIs: true)
class Empty {}

@BlessIt.only(asIs: true)
class BaseState {}

@BlessIt.only(asIs: true)
class Initial extends BaseState {}

@BlessIt.only(asIs: true)
class Loading extends BaseState {}

@BlessIt.only(asIs: true)
class Success extends BaseState {}

@BlessIt.only(asIs: true)
class SuccessUser extends Success {}

@BlessIt.only(asIs: true)
class SuccessGuard extends Success {}

@BlessIt.only(asIs: true)
class BaseState2 {}

@BlessIt.only(asIs: true)
class _Initial extends BaseState2 {}

@BlessIt.only(asIs: true)
class _Loading extends BaseState2 {}

@BlessIt.only(asIs: true)
class _Success extends BaseState2 {}

@BlessIt.only(asIs: true)
class _SuccessUser extends _Success {}

@BlessIt.only(asIs: true)
class _SuccessGuard extends _Success {}
