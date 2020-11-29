part of 'questions_bloc.dart';

@freezed
abstract class QuestionsEvent with _$QuestionsEvent {
  const factory QuestionsEvent.initial() = _Initial;
  const factory QuestionsEvent.getMoreQuestions() = _GetMoreQuestions;
}