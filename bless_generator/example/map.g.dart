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
    required T Function(SuccessGuard guard) guard,
    required T Function(SuccessUser user) user,
  }) {
    if (this is SuccessGuard) {
      return guard(this as SuccessGuard);
    } else if (this is SuccessUser) {
      return user(this as SuccessUser);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(SuccessGuard guard)? guard,
    T Function(SuccessUser user)? user,
    required T Function(Success) orElse,
  }) {
    if (this is SuccessGuard && guard != null) {
      return guard(this as SuccessGuard);
    } else if (this is SuccessUser && user != null) {
      return user(this as SuccessUser);
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
    required T Function(_SuccessGuard guard) guard,
    required T Function(_SuccessUser user) user,
  }) {
    if (this is _SuccessGuard) {
      return guard(this as _SuccessGuard);
    } else if (this is _SuccessUser) {
      return user(this as _SuccessUser);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(_SuccessGuard guard)? guard,
    T Function(_SuccessUser user)? user,
    required T Function(_Success) orElse,
  }) {
    if (this is _SuccessGuard && guard != null) {
      return guard(this as _SuccessGuard);
    } else if (this is _SuccessUser && user != null) {
      return user(this as _SuccessUser);
    } else {
      return orElse(this);
    }
  }
}

extension GameStateBlessExtension on GameState {
  T map<T>({
    required T Function(SuccessGameState success) success,
    required T Function(LoadingGameState loading) loading,
  }) {
    if (this is SuccessGameState) {
      return success(this as SuccessGameState);
    } else if (this is LoadingGameState) {
      return loading(this as LoadingGameState);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(SuccessGameState success)? success,
    T Function(LoadingGameState loading)? loading,
    required T Function(GameState) orElse,
  }) {
    if (this is SuccessGameState && success != null) {
      return success(this as SuccessGameState);
    } else if (this is LoadingGameState && loading != null) {
      return loading(this as LoadingGameState);
    } else {
      return orElse(this);
    }
  }
}

extension GameState2BlessExtension on GameState2 {
  T map<T>({
    required T Function(GameState2Success success) success,
    required T Function(GameState2Loading loading) loading,
  }) {
    if (this is GameState2Success) {
      return success(this as GameState2Success);
    } else if (this is GameState2Loading) {
      return loading(this as GameState2Loading);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(GameState2Success success)? success,
    T Function(GameState2Loading loading)? loading,
    required T Function(GameState2) orElse,
  }) {
    if (this is GameState2Success && success != null) {
      return success(this as GameState2Success);
    } else if (this is GameState2Loading && loading != null) {
      return loading(this as GameState2Loading);
    } else {
      return orElse(this);
    }
  }
}

extension AuthStateBlessExtension on AuthState {
  bool get isSuccess => this is AuthSuccessState;

  bool get isFailure => this is AuthFailureState;

  AuthSuccessState? get asSuccess =>
      this is AuthSuccessState ? this as AuthSuccessState : null;

  AuthFailureState? get asFailure =>
      this is AuthFailureState ? this as AuthFailureState : null;

  T map<T>({
    required T Function(AuthSuccessState success) success,
    required T Function(AuthFailureState failure) failure,
  }) {
    if (this is AuthSuccessState) {
      return success(this as AuthSuccessState);
    } else if (this is AuthFailureState) {
      return failure(this as AuthFailureState);
    }

    throw 'Please run "dart run build_runner build -d"';
  }

  T maybeMap<T>({
    T Function(AuthSuccessState success)? success,
    T Function(AuthFailureState failure)? failure,
    required T Function(AuthState) orElse,
  }) {
    if (this is AuthSuccessState && success != null) {
      return success(this as AuthSuccessState);
    } else if (this is AuthFailureState && failure != null) {
      return failure(this as AuthFailureState);
    } else {
      return orElse(this);
    }
  }
}

extension AuthFailureStateBlessExtension on AuthFailureState {
  AuthFailureState copyWith({
    String? error,
  }) {
    return AuthFailureState(
      error: error ?? this.error,
    );
  }
}

extension AuthSuccessStateBlessExtension on AuthSuccessState {
  AuthSuccessState copyWith() {
    return const AuthSuccessState();
  }
}
