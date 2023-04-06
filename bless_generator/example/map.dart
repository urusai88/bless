import 'package:bless_annotation/bless_annotation.dart';

part 'map.g.dart';

@BlessIt.only(map: true)
class Empty {}

@BlessIt.only(map: true)
class BaseState {}

@BlessIt.only(map: true)
class Initial extends BaseState {}

@BlessIt.only(map: true)
class Loading extends BaseState {}

@BlessIt.only(map: true)
class Success extends BaseState {}

@BlessIt.only(map: true)
class SuccessUser extends Success {}

@BlessIt.only(map: true)
class SuccessGuard extends Success {}

@BlessIt.only(map: true)
class BaseState2 {}

@BlessIt.only(map: true)
class _Initial extends BaseState2 {}

@BlessIt.only(map: true)
class _Loading extends BaseState2 {}

@BlessIt.only(map: true)
class _Success extends BaseState2 {}

@BlessIt.only(map: true)
class _SuccessUser extends _Success {}

@BlessIt.only(map: true)
class _SuccessGuard extends _Success {}

@BlessIt.only(map: true)
abstract class GameState {}

@BlessIt.only(map: true)
class LoadingGameState extends GameState {}

@BlessIt.only(map: true)
class SuccessGameState extends GameState {}

@BlessIt.only(map: true)
abstract class GameState2 {}

@BlessIt.only(map: true)
class GameState2Loading extends GameState2 {}

@BlessIt.only(map: true)
class GameState2Success extends GameState2 {}
