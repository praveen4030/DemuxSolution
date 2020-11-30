// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuestionsEventTearOff {
  const _$QuestionsEventTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _GetMoreQuestions getMoreQuestions() {
    return const _GetMoreQuestions();
  }

// ignore: unused_element
  _AddFilter addFilter(String tag) {
    return _AddFilter(
      tag,
    );
  }

// ignore: unused_element
  _RemoveFilter removeFilter(String tag) {
    return _RemoveFilter(
      tag,
    );
  }

// ignore: unused_element
  _ShowFilteredQuestions showFilteredQuestions() {
    return const _ShowFilteredQuestions();
  }

// ignore: unused_element
  _ClearFilters clearFilters() {
    return const _ClearFilters();
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionsEvent = _$QuestionsEventTearOff();

/// @nodoc
mixin _$QuestionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $QuestionsEventCopyWith<$Res> {
  factory $QuestionsEventCopyWith(
          QuestionsEvent value, $Res Function(QuestionsEvent) then) =
      _$QuestionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionsEventCopyWithImpl<$Res>
    implements $QuestionsEventCopyWith<$Res> {
  _$QuestionsEventCopyWithImpl(this._value, this._then);

  final QuestionsEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionsEvent) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuestionsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionsEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GetMoreQuestionsCopyWith<$Res> {
  factory _$GetMoreQuestionsCopyWith(
          _GetMoreQuestions value, $Res Function(_GetMoreQuestions) then) =
      __$GetMoreQuestionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMoreQuestionsCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$GetMoreQuestionsCopyWith<$Res> {
  __$GetMoreQuestionsCopyWithImpl(
      _GetMoreQuestions _value, $Res Function(_GetMoreQuestions) _then)
      : super(_value, (v) => _then(v as _GetMoreQuestions));

  @override
  _GetMoreQuestions get _value => super._value as _GetMoreQuestions;
}

/// @nodoc
class _$_GetMoreQuestions implements _GetMoreQuestions {
  const _$_GetMoreQuestions();

  @override
  String toString() {
    return 'QuestionsEvent.getMoreQuestions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMoreQuestions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return getMoreQuestions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMoreQuestions != null) {
      return getMoreQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return getMoreQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMoreQuestions != null) {
      return getMoreQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetMoreQuestions implements QuestionsEvent {
  const factory _GetMoreQuestions() = _$_GetMoreQuestions;
}

/// @nodoc
abstract class _$AddFilterCopyWith<$Res> {
  factory _$AddFilterCopyWith(
          _AddFilter value, $Res Function(_AddFilter) then) =
      __$AddFilterCopyWithImpl<$Res>;
  $Res call({String tag});
}

/// @nodoc
class __$AddFilterCopyWithImpl<$Res> extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$AddFilterCopyWith<$Res> {
  __$AddFilterCopyWithImpl(_AddFilter _value, $Res Function(_AddFilter) _then)
      : super(_value, (v) => _then(v as _AddFilter));

  @override
  _AddFilter get _value => super._value as _AddFilter;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_AddFilter(
      tag == freezed ? _value.tag : tag as String,
    ));
  }
}

/// @nodoc
class _$_AddFilter implements _AddFilter {
  const _$_AddFilter(this.tag) : assert(tag != null);

  @override
  final String tag;

  @override
  String toString() {
    return 'QuestionsEvent.addFilter(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFilter &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$AddFilterCopyWith<_AddFilter> get copyWith =>
      __$AddFilterCopyWithImpl<_AddFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return addFilter(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFilter != null) {
      return addFilter(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return addFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFilter != null) {
      return addFilter(this);
    }
    return orElse();
  }
}

abstract class _AddFilter implements QuestionsEvent {
  const factory _AddFilter(String tag) = _$_AddFilter;

  String get tag;
  _$AddFilterCopyWith<_AddFilter> get copyWith;
}

/// @nodoc
abstract class _$RemoveFilterCopyWith<$Res> {
  factory _$RemoveFilterCopyWith(
          _RemoveFilter value, $Res Function(_RemoveFilter) then) =
      __$RemoveFilterCopyWithImpl<$Res>;
  $Res call({String tag});
}

/// @nodoc
class __$RemoveFilterCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$RemoveFilterCopyWith<$Res> {
  __$RemoveFilterCopyWithImpl(
      _RemoveFilter _value, $Res Function(_RemoveFilter) _then)
      : super(_value, (v) => _then(v as _RemoveFilter));

  @override
  _RemoveFilter get _value => super._value as _RemoveFilter;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_RemoveFilter(
      tag == freezed ? _value.tag : tag as String,
    ));
  }
}

/// @nodoc
class _$_RemoveFilter implements _RemoveFilter {
  const _$_RemoveFilter(this.tag) : assert(tag != null);

  @override
  final String tag;

  @override
  String toString() {
    return 'QuestionsEvent.removeFilter(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveFilter &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$RemoveFilterCopyWith<_RemoveFilter> get copyWith =>
      __$RemoveFilterCopyWithImpl<_RemoveFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return removeFilter(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFilter != null) {
      return removeFilter(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return removeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFilter != null) {
      return removeFilter(this);
    }
    return orElse();
  }
}

abstract class _RemoveFilter implements QuestionsEvent {
  const factory _RemoveFilter(String tag) = _$_RemoveFilter;

  String get tag;
  _$RemoveFilterCopyWith<_RemoveFilter> get copyWith;
}

/// @nodoc
abstract class _$ShowFilteredQuestionsCopyWith<$Res> {
  factory _$ShowFilteredQuestionsCopyWith(_ShowFilteredQuestions value,
          $Res Function(_ShowFilteredQuestions) then) =
      __$ShowFilteredQuestionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowFilteredQuestionsCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$ShowFilteredQuestionsCopyWith<$Res> {
  __$ShowFilteredQuestionsCopyWithImpl(_ShowFilteredQuestions _value,
      $Res Function(_ShowFilteredQuestions) _then)
      : super(_value, (v) => _then(v as _ShowFilteredQuestions));

  @override
  _ShowFilteredQuestions get _value => super._value as _ShowFilteredQuestions;
}

/// @nodoc
class _$_ShowFilteredQuestions implements _ShowFilteredQuestions {
  const _$_ShowFilteredQuestions();

  @override
  String toString() {
    return 'QuestionsEvent.showFilteredQuestions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowFilteredQuestions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return showFilteredQuestions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFilteredQuestions != null) {
      return showFilteredQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return showFilteredQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showFilteredQuestions != null) {
      return showFilteredQuestions(this);
    }
    return orElse();
  }
}

abstract class _ShowFilteredQuestions implements QuestionsEvent {
  const factory _ShowFilteredQuestions() = _$_ShowFilteredQuestions;
}

/// @nodoc
abstract class _$ClearFiltersCopyWith<$Res> {
  factory _$ClearFiltersCopyWith(
          _ClearFilters value, $Res Function(_ClearFilters) then) =
      __$ClearFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearFiltersCopyWithImpl<$Res>
    extends _$QuestionsEventCopyWithImpl<$Res>
    implements _$ClearFiltersCopyWith<$Res> {
  __$ClearFiltersCopyWithImpl(
      _ClearFilters _value, $Res Function(_ClearFilters) _then)
      : super(_value, (v) => _then(v as _ClearFilters));

  @override
  _ClearFilters get _value => super._value as _ClearFilters;
}

/// @nodoc
class _$_ClearFilters implements _ClearFilters {
  const _$_ClearFilters();

  @override
  String toString() {
    return 'QuestionsEvent.clearFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getMoreQuestions(),
    @required TResult addFilter(String tag),
    @required TResult removeFilter(String tag),
    @required TResult showFilteredQuestions(),
    @required TResult clearFilters(),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return clearFilters();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getMoreQuestions(),
    TResult addFilter(String tag),
    TResult removeFilter(String tag),
    TResult showFilteredQuestions(),
    TResult clearFilters(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearFilters != null) {
      return clearFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getMoreQuestions(_GetMoreQuestions value),
    @required TResult addFilter(_AddFilter value),
    @required TResult removeFilter(_RemoveFilter value),
    @required TResult showFilteredQuestions(_ShowFilteredQuestions value),
    @required TResult clearFilters(_ClearFilters value),
  }) {
    assert(initial != null);
    assert(getMoreQuestions != null);
    assert(addFilter != null);
    assert(removeFilter != null);
    assert(showFilteredQuestions != null);
    assert(clearFilters != null);
    return clearFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getMoreQuestions(_GetMoreQuestions value),
    TResult addFilter(_AddFilter value),
    TResult removeFilter(_RemoveFilter value),
    TResult showFilteredQuestions(_ShowFilteredQuestions value),
    TResult clearFilters(_ClearFilters value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearFilters != null) {
      return clearFilters(this);
    }
    return orElse();
  }
}

abstract class _ClearFilters implements QuestionsEvent {
  const factory _ClearFilters() = _$_ClearFilters;
}

/// @nodoc
class _$QuestionsStateTearOff {
  const _$QuestionsStateTearOff();

// ignore: unused_element
  _QuestionsState call(
      {@required bool isLoading,
      @required Option<Either<Failure, List<Question>>> failureOrSuccess,
      @required List<Question> list,
      @required bool isLoadingMore,
      @required bool hasMore,
      @required List<String> filtersList}) {
    return _QuestionsState(
      isLoading: isLoading,
      failureOrSuccess: failureOrSuccess,
      list: list,
      isLoadingMore: isLoadingMore,
      hasMore: hasMore,
      filtersList: filtersList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuestionsState = _$QuestionsStateTearOff();

/// @nodoc
mixin _$QuestionsState {
  bool get isLoading;
  Option<Either<Failure, List<Question>>> get failureOrSuccess;
  List<Question> get list;
  bool get isLoadingMore;
  bool get hasMore;
  List<String> get filtersList;

  $QuestionsStateCopyWith<QuestionsState> get copyWith;
}

/// @nodoc
abstract class $QuestionsStateCopyWith<$Res> {
  factory $QuestionsStateCopyWith(
          QuestionsState value, $Res Function(QuestionsState) then) =
      _$QuestionsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<Failure, List<Question>>> failureOrSuccess,
      List<Question> list,
      bool isLoadingMore,
      bool hasMore,
      List<String> filtersList});
}

/// @nodoc
class _$QuestionsStateCopyWithImpl<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  _$QuestionsStateCopyWithImpl(this._value, this._then);

  final QuestionsState _value;
  // ignore: unused_field
  final $Res Function(QuestionsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object failureOrSuccess = freezed,
    Object list = freezed,
    Object isLoadingMore = freezed,
    Object hasMore = freezed,
    Object filtersList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<Failure, List<Question>>>,
      list: list == freezed ? _value.list : list as List<Question>,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
      hasMore: hasMore == freezed ? _value.hasMore : hasMore as bool,
      filtersList: filtersList == freezed
          ? _value.filtersList
          : filtersList as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionsStateCopyWith<$Res>
    implements $QuestionsStateCopyWith<$Res> {
  factory _$QuestionsStateCopyWith(
          _QuestionsState value, $Res Function(_QuestionsState) then) =
      __$QuestionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<Failure, List<Question>>> failureOrSuccess,
      List<Question> list,
      bool isLoadingMore,
      bool hasMore,
      List<String> filtersList});
}

/// @nodoc
class __$QuestionsStateCopyWithImpl<$Res>
    extends _$QuestionsStateCopyWithImpl<$Res>
    implements _$QuestionsStateCopyWith<$Res> {
  __$QuestionsStateCopyWithImpl(
      _QuestionsState _value, $Res Function(_QuestionsState) _then)
      : super(_value, (v) => _then(v as _QuestionsState));

  @override
  _QuestionsState get _value => super._value as _QuestionsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object failureOrSuccess = freezed,
    Object list = freezed,
    Object isLoadingMore = freezed,
    Object hasMore = freezed,
    Object filtersList = freezed,
  }) {
    return _then(_QuestionsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<Failure, List<Question>>>,
      list: list == freezed ? _value.list : list as List<Question>,
      isLoadingMore: isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore as bool,
      hasMore: hasMore == freezed ? _value.hasMore : hasMore as bool,
      filtersList: filtersList == freezed
          ? _value.filtersList
          : filtersList as List<String>,
    ));
  }
}

/// @nodoc
class _$_QuestionsState implements _QuestionsState {
  const _$_QuestionsState(
      {@required this.isLoading,
      @required this.failureOrSuccess,
      @required this.list,
      @required this.isLoadingMore,
      @required this.hasMore,
      @required this.filtersList})
      : assert(isLoading != null),
        assert(failureOrSuccess != null),
        assert(list != null),
        assert(isLoadingMore != null),
        assert(hasMore != null),
        assert(filtersList != null);

  @override
  final bool isLoading;
  @override
  final Option<Either<Failure, List<Question>>> failureOrSuccess;
  @override
  final List<Question> list;
  @override
  final bool isLoadingMore;
  @override
  final bool hasMore;
  @override
  final List<String> filtersList;

  @override
  String toString() {
    return 'QuestionsState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess, list: $list, isLoadingMore: $isLoadingMore, hasMore: $hasMore, filtersList: $filtersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingMore, isLoadingMore)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality()
                    .equals(other.hasMore, hasMore)) &&
            (identical(other.filtersList, filtersList) ||
                const DeepCollectionEquality()
                    .equals(other.filtersList, filtersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccess) ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(isLoadingMore) ^
      const DeepCollectionEquality().hash(hasMore) ^
      const DeepCollectionEquality().hash(filtersList);

  @override
  _$QuestionsStateCopyWith<_QuestionsState> get copyWith =>
      __$QuestionsStateCopyWithImpl<_QuestionsState>(this, _$identity);
}

abstract class _QuestionsState implements QuestionsState {
  const factory _QuestionsState(
      {@required bool isLoading,
      @required Option<Either<Failure, List<Question>>> failureOrSuccess,
      @required List<Question> list,
      @required bool isLoadingMore,
      @required bool hasMore,
      @required List<String> filtersList}) = _$_QuestionsState;

  @override
  bool get isLoading;
  @override
  Option<Either<Failure, List<Question>>> get failureOrSuccess;
  @override
  List<Question> get list;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMore;
  @override
  List<String> get filtersList;
  @override
  _$QuestionsStateCopyWith<_QuestionsState> get copyWith;
}
