part of 'questions_bloc.dart';

@freezed
abstract class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.initial() = _Initial;
  const factory QuestionsEvent.getMoreQuestions() = _GetMoreQuestions;
  const factory QuestionsEvent.addFilter(String tag) = _AddFilter;
  const factory QuestionsEvent.removeFilter(String tag) = _RemoveFilter;
  const factory QuestionsEvent.showFilteredQuestions() = _ShowFilteredQuestions;
  const factory QuestionsEvent.clearFilters() = _ClearFilters;
}
