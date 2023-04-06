// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, library_private_types_in_public_api, unused_element

part of 'map.dart';

// **************************************************************************
// BlessGenerator
// **************************************************************************

extension BaseStateBlessExtension on BaseState {
  T map<T>({
    required T Function(SuccessGuard successGuard) successGuard,
    required T Function(SuccessUser successUser) successUser,
    required T Function(Success success) success,
    required T Function(Loading loading) loading,
    required T Function(Initial initial) initial,
  }) {
    if (this is SuccessGuard) {
      return successGuard(this as SuccessGuard);
    } else if (this is SuccessUser) {
      return successUser(this as SuccessUser);
    } else if (this is Success) {
      return success(this as Success);
    } else if (this is Loading) {
      return loading(this as Loading);
    } else if (this is Initial) {
      return initial(this as Initial);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(SuccessGuard successGuard)? successGuard,
    T Function(SuccessUser successUser)? successUser,
    T Function(Success success)? success,
    T Function(Loading loading)? loading,
    T Function(Initial initial)? initial,
    required T Function(BaseState) orElse,
  }) {
    if (this is SuccessGuard && successGuard != null) {
      return successGuard(this as SuccessGuard);
    } else if (this is SuccessUser && successUser != null) {
      return successUser(this as SuccessUser);
    } else if (this is Success && success != null) {
      return success(this as Success);
    } else if (this is Loading && loading != null) {
      return loading(this as Loading);
    } else if (this is Initial && initial != null) {
      return initial(this as Initial);
    } else {
      return orElse(this);
    }
  }
}

extension SuccessBlessExtension on Success {
  T map<T>({
    required T Function(SuccessGuard successGuard) successGuard,
    required T Function(SuccessUser successUser) successUser,
  }) {
    if (this is SuccessGuard) {
      return successGuard(this as SuccessGuard);
    } else if (this is SuccessUser) {
      return successUser(this as SuccessUser);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(SuccessGuard successGuard)? successGuard,
    T Function(SuccessUser successUser)? successUser,
    required T Function(Success) orElse,
  }) {
    if (this is SuccessGuard && successGuard != null) {
      return successGuard(this as SuccessGuard);
    } else if (this is SuccessUser && successUser != null) {
      return successUser(this as SuccessUser);
    } else {
      return orElse(this);
    }
  }
}

extension BaseState2BlessExtension on BaseState2 {
  T map<T>({
    required T Function(_SuccessGuard successGuard) successGuard,
    required T Function(_SuccessUser successUser) successUser,
    required T Function(_Success success) success,
    required T Function(_Loading loading) loading,
    required T Function(_Initial initial) initial,
  }) {
    if (this is _SuccessGuard) {
      return successGuard(this as _SuccessGuard);
    } else if (this is _SuccessUser) {
      return successUser(this as _SuccessUser);
    } else if (this is _Success) {
      return success(this as _Success);
    } else if (this is _Loading) {
      return loading(this as _Loading);
    } else if (this is _Initial) {
      return initial(this as _Initial);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(_SuccessGuard successGuard)? successGuard,
    T Function(_SuccessUser successUser)? successUser,
    T Function(_Success success)? success,
    T Function(_Loading loading)? loading,
    T Function(_Initial initial)? initial,
    required T Function(BaseState2) orElse,
  }) {
    if (this is _SuccessGuard && successGuard != null) {
      return successGuard(this as _SuccessGuard);
    } else if (this is _SuccessUser && successUser != null) {
      return successUser(this as _SuccessUser);
    } else if (this is _Success && success != null) {
      return success(this as _Success);
    } else if (this is _Loading && loading != null) {
      return loading(this as _Loading);
    } else if (this is _Initial && initial != null) {
      return initial(this as _Initial);
    } else {
      return orElse(this);
    }
  }
}

extension _SuccessBlessExtension on _Success {
  T map<T>({
    required T Function(_SuccessGuard successGuard) successGuard,
    required T Function(_SuccessUser successUser) successUser,
  }) {
    if (this is _SuccessGuard) {
      return successGuard(this as _SuccessGuard);
    } else if (this is _SuccessUser) {
      return successUser(this as _SuccessUser);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(_SuccessGuard successGuard)? successGuard,
    T Function(_SuccessUser successUser)? successUser,
    required T Function(_Success) orElse,
  }) {
    if (this is _SuccessGuard && successGuard != null) {
      return successGuard(this as _SuccessGuard);
    } else if (this is _SuccessUser && successUser != null) {
      return successUser(this as _SuccessUser);
    } else {
      return orElse(this);
    }
  }
}

extension GameStateBlessExtension on GameState {
  T map<T>({
    required T Function(SuccessGameState successGameState) successGameState,
    required T Function(LoadingGameState loadingGameState) loadingGameState,
  }) {
    if (this is SuccessGameState) {
      return successGameState(this as SuccessGameState);
    } else if (this is LoadingGameState) {
      return loadingGameState(this as LoadingGameState);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(SuccessGameState successGameState)? successGameState,
    T Function(LoadingGameState loadingGameState)? loadingGameState,
    required T Function(GameState) orElse,
  }) {
    if (this is SuccessGameState && successGameState != null) {
      return successGameState(this as SuccessGameState);
    } else if (this is LoadingGameState && loadingGameState != null) {
      return loadingGameState(this as LoadingGameState);
    } else {
      return orElse(this);
    }
  }
}

extension GameState2BlessExtension on GameState2 {
  T map<T>({
    required T Function(GameState2Success gameState2Success) gameState2Success,
    required T Function(GameState2Loading gameState2Loading) gameState2Loading,
  }) {
    if (this is GameState2Success) {
      return gameState2Success(this as GameState2Success);
    } else if (this is GameState2Loading) {
      return gameState2Loading(this as GameState2Loading);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(GameState2Success gameState2Success)? gameState2Success,
    T Function(GameState2Loading gameState2Loading)? gameState2Loading,
    required T Function(GameState2) orElse,
  }) {
    if (this is GameState2Success && gameState2Success != null) {
      return gameState2Success(this as GameState2Success);
    } else if (this is GameState2Loading && gameState2Loading != null) {
      return gameState2Loading(this as GameState2Loading);
    } else {
      return orElse(this);
    }
  }
}
