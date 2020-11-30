part of 'questions_bloc.dart';

@freezed
abstract class QuestionsState with _$QuestionsState {
  const factory QuestionsState({
    @required bool isLoading,
    @required Option<Either<Failure, List<Question>>> failureOrSuccess,
    @required List<Question> list,
    @required bool isLoadingMore,
    @required bool hasMore,
    @required List<String> filtersList,
  }) = _QuestionsState;

  factory QuestionsState.initial() => QuestionsState(
        isLoading: true,
        failureOrSuccess: none(),
        list: [],
        isLoadingMore: false,
        hasMore : true,
        filtersList: [],
      );
}
