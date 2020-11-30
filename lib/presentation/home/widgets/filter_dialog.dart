import 'package:auto_route/auto_route.dart';
import 'package:demux_assignment/application/questions/questions_bloc.dart';
import 'package:demux_assignment/presentation/core/data/lists_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext blocContext) {
    return BlocBuilder<QuestionsBloc, QuestionsState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filter your questions",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .bloc<QuestionsBloc>()
                          .add(const QuestionsEvent.initial());
                      ExtendedNavigator.of(context).pop();    
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Companies",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Wrap(
                spacing: 6.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[
                  ...generateTags(
                    blocContext,
                    FilterLists.companiesList,
                    state.filtersList,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Topics",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Wrap(
                spacing: 6.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[
                  ...generateTags(
                    blocContext,
                    FilterLists.topicsList,
                    state.filtersList,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Difficulty",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Wrap(
                spacing: 6.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[
                  ...generateTags(
                    blocContext,
                    FilterLists.difficultyList,
                    state.filtersList,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Helpful for",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Wrap(
                spacing: 6.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[
                  ...generateTags(
                    blocContext,
                    FilterLists.questionAskedType,
                    state.filtersList,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  context
                      .bloc<QuestionsBloc>()
                      .add(const QuestionsEvent.clearFilters());
                  ExtendedNavigator.of(context).pop();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.red,
                  ),
                  child: Text(
                    "Clear All",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<Widget> generateTags(
    BuildContext context,
    List<String> list,
    List<String> filtersList,
  ) {
    return list
        .map(
          (tag) => getTagWidget(context, tag, filtersList),
        )
        .toList();
  }

  Widget getTagWidget(
    BuildContext context,
    String tag,
    List<String> filtersList,
  ) {
    return FilterChip(
      selectedColor: Colors.blue.shade600,
      disabledColor: Colors.blue.shade400,
      selected: filtersList.contains(tag),
      labelStyle: const TextStyle(
        color: Colors.black38,
      ),
      label: Text(tag),
      onSelected: (bool value) {
        if (filtersList.contains(tag)) {
          context.bloc<QuestionsBloc>().add(QuestionsEvent.removeFilter(tag));
        } else {
          context.bloc<QuestionsBloc>().add(QuestionsEvent.addFilter(tag));
        }
      },
    );
  }
}
