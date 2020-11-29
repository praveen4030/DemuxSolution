// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  FetchData fetchData() {
    return const FetchData();
  }

// ignore: unused_element
  RulesException rulesException() {
    return const RulesException();
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchData(),
    @required TResult rulesException(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchData(),
    TResult rulesException(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchData(FetchData value),
    @required TResult rulesException(RulesException value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchData(FetchData value),
    TResult rulesException(RulesException value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $FetchDataCopyWith<$Res> {
  factory $FetchDataCopyWith(FetchData value, $Res Function(FetchData) then) =
      _$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDataCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $FetchDataCopyWith<$Res> {
  _$FetchDataCopyWithImpl(FetchData _value, $Res Function(FetchData) _then)
      : super(_value, (v) => _then(v as FetchData));

  @override
  FetchData get _value => super._value as FetchData;
}

/// @nodoc
class _$FetchData implements FetchData {
  const _$FetchData();

  @override
  String toString() {
    return 'Failure.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchData(),
    @required TResult rulesException(),
  }) {
    assert(fetchData != null);
    assert(rulesException != null);
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchData(),
    TResult rulesException(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchData(FetchData value),
    @required TResult rulesException(RulesException value),
  }) {
    assert(fetchData != null);
    assert(rulesException != null);
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchData(FetchData value),
    TResult rulesException(RulesException value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchData implements Failure {
  const factory FetchData() = _$FetchData;
}

/// @nodoc
abstract class $RulesExceptionCopyWith<$Res> {
  factory $RulesExceptionCopyWith(
          RulesException value, $Res Function(RulesException) then) =
      _$RulesExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RulesExceptionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $RulesExceptionCopyWith<$Res> {
  _$RulesExceptionCopyWithImpl(
      RulesException _value, $Res Function(RulesException) _then)
      : super(_value, (v) => _then(v as RulesException));

  @override
  RulesException get _value => super._value as RulesException;
}

/// @nodoc
class _$RulesException implements RulesException {
  const _$RulesException();

  @override
  String toString() {
    return 'Failure.rulesException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RulesException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchData(),
    @required TResult rulesException(),
  }) {
    assert(fetchData != null);
    assert(rulesException != null);
    return rulesException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchData(),
    TResult rulesException(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rulesException != null) {
      return rulesException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchData(FetchData value),
    @required TResult rulesException(RulesException value),
  }) {
    assert(fetchData != null);
    assert(rulesException != null);
    return rulesException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchData(FetchData value),
    TResult rulesException(RulesException value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rulesException != null) {
      return rulesException(this);
    }
    return orElse();
  }
}

abstract class RulesException implements Failure {
  const factory RulesException() = _$RulesException;
}
