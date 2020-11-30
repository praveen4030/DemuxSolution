import 'package:auto_route/auto_route.dart';
import 'package:demux_assignment/application/questions/questions_bloc.dart';
import 'package:demux_assignment/presentation/home/widgets/filter_dialog.dart';
import 'package:demux_assignment/presentation/home/widgets/questions_list.dart';
import 'package:demux_assignment/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  Future<void> refresh(BuildContext context) async {
    context.bloc<QuestionsBloc>().add(const QuestionsEvent.initial());
  }

  @override
  Widget build(BuildContext buildContext) {
    return BlocConsumer<QuestionsBloc, QuestionsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Image.asset(
              'assets/logo.png',
              height: 30,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {
                  ExtendedNavigator.of(context).push(Routes.searchPage);
                },
              )
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () => refresh(context),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : const QuestionsListPage(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            onPressed: () {
              showModalBottomSheet(
                  context: buildContext,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  builder: (contex) {
                    return const FilterDialog();
                  });
            },
            child: const Icon(Icons.sort_rounded),
          ),
        );
      },
    );
  }
}
