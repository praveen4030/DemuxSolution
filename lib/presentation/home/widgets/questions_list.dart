import 'package:auto_route/auto_route.dart';
import 'package:demux_assignment/application/questions/questions_bloc.dart';
import 'package:demux_assignment/domain/questions/question.dart';
import 'package:demux_assignment/presentation/core/pages/not_found.dart';
import 'package:demux_assignment/presentation/home/widgets/questions_tile.dart';
import 'package:demux_assignment/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsListPage extends StatelessWidget {
  const QuestionsListPage({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.position.pixels;
      final delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        context
            .bloc<QuestionsBloc>()
            .add(const QuestionsEvent.getMoreQuestions());
      }
    });

    return BlocBuilder<QuestionsBloc, QuestionsState>(
      builder: (context, state) {
        return CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              postListWid(state.list),
              const SizedBox(height: 5),
              if (state.isLoadingMore)
                const Center(child: CircularProgressIndicator())
              else
                Container(),
              const SizedBox(height: 5)
            ])),
          ],
        );
      },
    );
  }

  Widget postListWid(List<Question> questionsList) {
    return questionsList.isEmpty
        ? const NotFoundPage(
            path: 'assets/illustrations/posts.png',
            text: "No post found, add more now")
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: questionsList.length,
            itemBuilder: (context, index) {
              return QuestionsTile(
                question: questionsList[index],
              );
            });
  }
}
