// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_study_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStudyScreenStateTearOff {
  const _$HomeStudyScreenStateTearOff();

  _Create call({int currentIndex = 0}) {
    return _Create(
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
const $HomeStudyScreenState = _$HomeStudyScreenStateTearOff();

/// @nodoc
mixin _$HomeStudyScreenState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStudyScreenStateCopyWith<HomeStudyScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStudyScreenStateCopyWith<$Res> {
  factory $HomeStudyScreenStateCopyWith(HomeStudyScreenState value,
          $Res Function(HomeStudyScreenState) then) =
      _$HomeStudyScreenStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$HomeStudyScreenStateCopyWithImpl<$Res>
    implements $HomeStudyScreenStateCopyWith<$Res> {
  _$HomeStudyScreenStateCopyWithImpl(this._value, this._then);

  final HomeStudyScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeStudyScreenState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateCopyWith<$Res>
    implements $HomeStudyScreenStateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$CreateCopyWithImpl<$Res>
    extends _$HomeStudyScreenStateCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_Create(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create({this.currentIndex = 0});

  @JsonKey()
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'HomeStudyScreenState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Create &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);
}

abstract class _Create implements HomeStudyScreenState {
  const factory _Create({int currentIndex}) = _$_Create;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$CreateCopyWith<_Create> get copyWith => throw _privateConstructorUsedError;
}
