import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:demux_assignment/domain/questions/core/failures.dart';
import 'package:demux_assignment/domain/questions/i_questions.dart';
import 'package:demux_assignment/domain/questions/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'questions_event.dart';
part 'questions_state.dart';
part 'questions_bloc.freezed.dart';

@injectable
class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  final IQuestions iQuestions;
  QuestionsBloc(this.iQuestions) : super(QuestionsState.initial());

  @override
  Stream<QuestionsState> mapEventToState(
    QuestionsEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield state.copyWith(
          hasMore: true,
          isLoading: true,
          isLoadingMore: false,
          failureOrSuccess: none(),
        );
        
        final questionsOpt = await iQuestions.getFirstQuestions();
        yield questionsOpt.fold(
          (l) =>
              state.copyWith(isLoading: false, failureOrSuccess: some(left(l))),
          (list) => state.copyWith(
            list: list,
            isLoading: false,
          ),
        );
      },
      getMoreQuestions: (e) async* {
        if (state.hasMore) {
          yield state.copyWith(
            isLoadingMore: true,
          );

          final opt =
              await iQuestions.getMoreQuestions(state.list.last.timestamp);

          yield opt.fold(
              (failure) => state.copyWith(
                    failureOrSuccess: some(left(failure)),
                    isLoadingMore: false,
                  ), (list) {
            // List<Feed> listPosts = List.from(state.postsList)..ad dAll(list);

            state.list.addAll(list);
            return state.copyWith(
              // postsList: listPosts,
              isLoading: false,
              isLoadingMore: false,
              failureOrSuccess: none(),
              hasMore: list.length >= 5,
            );
          });
        }
      },
    );
  }
}
