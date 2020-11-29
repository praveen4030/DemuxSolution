import 'package:demux_assignment/domain/questions/question.dart';
import 'package:flutter/material.dart';

class QuestionsTile extends StatelessWidget {
  final Question question;

  const QuestionsTile({
    Key key,
    @required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        question.trending
            ? Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 4,
                  bottom: 4,
                ),
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffeceff1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Text(
                  "Trending in ${question.tags[0]}",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
              ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 10,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(
                12,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Text(question.frequency),
                ),
                title: Text(
                  question.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                question.detail,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 6.0, // gap between adjacent chips
                runSpacing: 0.0, // gap between lines
                children: <Widget>[...generateTags()],
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> generateTags() {
    return question.tags
        .map(
          (tag) => getTagWidget(tag),
        )
        .toList();
  }

  Widget getTagWidget(String tag) {
    return FilterChip(
      selectedColor: Colors.blue.shade800,
      disabledColor: Colors.blue.shade400,
      labelStyle: const TextStyle(
        color: Colors.black38,
      ),
      label: Text(tag),
      onSelected: (bool value) {},
    );
  }
}
