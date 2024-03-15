// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameModel game) started,
    required TResult Function(GameModel game) gameDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameModel game)? started,
    TResult? Function(GameModel game)? gameDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameModel game)? started,
    TResult Function(GameModel game)? gameDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) initial,
    required TResult Function(DetailStarted value) started,
    required TResult Function(DetailGameDetail value) gameDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailInitial value)? initial,
    TResult? Function(DetailStarted value)? started,
    TResult? Function(DetailGameDetail value)? gameDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? initial,
    TResult Function(DetailStarted value)? started,
    TResult Function(DetailGameDetail value)? gameDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailInitialImplCopyWith<$Res> {
  factory _$$DetailInitialImplCopyWith(
          _$DetailInitialImpl value, $Res Function(_$DetailInitialImpl) then) =
      __$$DetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailInitialImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DetailInitialImpl>
    implements _$$DetailInitialImplCopyWith<$Res> {
  __$$DetailInitialImplCopyWithImpl(
      _$DetailInitialImpl _value, $Res Function(_$DetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailInitialImpl implements DetailInitial {
  const _$DetailInitialImpl();

  @override
  String toString() {
    return 'DetailEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameModel game) started,
    required TResult Function(GameModel game) gameDetail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameModel game)? started,
    TResult? Function(GameModel game)? gameDetail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameModel game)? started,
    TResult Function(GameModel game)? gameDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) initial,
    required TResult Function(DetailStarted value) started,
    required TResult Function(DetailGameDetail value) gameDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailInitial value)? initial,
    TResult? Function(DetailStarted value)? started,
    TResult? Function(DetailGameDetail value)? gameDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? initial,
    TResult Function(DetailStarted value)? started,
    TResult Function(DetailGameDetail value)? gameDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailInitial implements DetailEvent {
  const factory DetailInitial() = _$DetailInitialImpl;
}

/// @nodoc
abstract class _$$DetailStartedImplCopyWith<$Res> {
  factory _$$DetailStartedImplCopyWith(
          _$DetailStartedImpl value, $Res Function(_$DetailStartedImpl) then) =
      __$$DetailStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameModel game});

  $GameModelCopyWith<$Res> get game;
}

/// @nodoc
class __$$DetailStartedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DetailStartedImpl>
    implements _$$DetailStartedImplCopyWith<$Res> {
  __$$DetailStartedImplCopyWithImpl(
      _$DetailStartedImpl _value, $Res Function(_$DetailStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$DetailStartedImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res> get game {
    return $GameModelCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$DetailStartedImpl implements DetailStarted {
  const _$DetailStartedImpl({required this.game});

  @override
  final GameModel game;

  @override
  String toString() {
    return 'DetailEvent.started(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStartedImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStartedImplCopyWith<_$DetailStartedImpl> get copyWith =>
      __$$DetailStartedImplCopyWithImpl<_$DetailStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameModel game) started,
    required TResult Function(GameModel game) gameDetail,
  }) {
    return started(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameModel game)? started,
    TResult? Function(GameModel game)? gameDetail,
  }) {
    return started?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameModel game)? started,
    TResult Function(GameModel game)? gameDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) initial,
    required TResult Function(DetailStarted value) started,
    required TResult Function(DetailGameDetail value) gameDetail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailInitial value)? initial,
    TResult? Function(DetailStarted value)? started,
    TResult? Function(DetailGameDetail value)? gameDetail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? initial,
    TResult Function(DetailStarted value)? started,
    TResult Function(DetailGameDetail value)? gameDetail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DetailStarted implements DetailEvent {
  const factory DetailStarted({required final GameModel game}) =
      _$DetailStartedImpl;

  GameModel get game;
  @JsonKey(ignore: true)
  _$$DetailStartedImplCopyWith<_$DetailStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailGameDetailImplCopyWith<$Res> {
  factory _$$DetailGameDetailImplCopyWith(_$DetailGameDetailImpl value,
          $Res Function(_$DetailGameDetailImpl) then) =
      __$$DetailGameDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameModel game});

  $GameModelCopyWith<$Res> get game;
}

/// @nodoc
class __$$DetailGameDetailImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$DetailGameDetailImpl>
    implements _$$DetailGameDetailImplCopyWith<$Res> {
  __$$DetailGameDetailImplCopyWithImpl(_$DetailGameDetailImpl _value,
      $Res Function(_$DetailGameDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$DetailGameDetailImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as GameModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameModelCopyWith<$Res> get game {
    return $GameModelCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$DetailGameDetailImpl implements DetailGameDetail {
  const _$DetailGameDetailImpl({required this.game});

  @override
  final GameModel game;

  @override
  String toString() {
    return 'DetailEvent.gameDetail(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailGameDetailImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailGameDetailImplCopyWith<_$DetailGameDetailImpl> get copyWith =>
      __$$DetailGameDetailImplCopyWithImpl<_$DetailGameDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(GameModel game) started,
    required TResult Function(GameModel game) gameDetail,
  }) {
    return gameDetail(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(GameModel game)? started,
    TResult? Function(GameModel game)? gameDetail,
  }) {
    return gameDetail?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(GameModel game)? started,
    TResult Function(GameModel game)? gameDetail,
    required TResult orElse(),
  }) {
    if (gameDetail != null) {
      return gameDetail(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailInitial value) initial,
    required TResult Function(DetailStarted value) started,
    required TResult Function(DetailGameDetail value) gameDetail,
  }) {
    return gameDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DetailInitial value)? initial,
    TResult? Function(DetailStarted value)? started,
    TResult? Function(DetailGameDetail value)? gameDetail,
  }) {
    return gameDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailInitial value)? initial,
    TResult Function(DetailStarted value)? started,
    TResult Function(DetailGameDetail value)? gameDetail,
    required TResult orElse(),
  }) {
    if (gameDetail != null) {
      return gameDetail(this);
    }
    return orElse();
  }
}

abstract class DetailGameDetail implements DetailEvent {
  const factory DetailGameDetail({required final GameModel game}) =
      _$DetailGameDetailImpl;

  GameModel get game;
  @JsonKey(ignore: true)
  _$$DetailGameDetailImplCopyWith<_$DetailGameDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
