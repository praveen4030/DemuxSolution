import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demux_assignment/domain/questions/question.dart';
import 'package:demux_assignment/presentation/core/pages/not_found.dart';
import 'package:demux_assignment/presentation/home/widgets/questions_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  String searchQuery = "";
  final CollectionReference questionsRef =
      FirebaseFirestore.instance.collection('Questions');

  final TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _startSearch();
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: "Search...",
        border: InputBorder.none,
      ),
      onChanged: (query) => updateSearchQuery(_searchQueryController.text),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (_searchQueryController == null ||
              _searchQueryController.text.isEmpty) {
            ExtendedNavigator.of(context).pop();
            return;
          }
          _clearSearchQuery();
        },
      ),
    ];
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }

// .startAt([searchQuery]).endAt([searchQuery + '\uf8ff'])
  Widget searchedList() {
    return StreamBuilder(
      stream: questionsRef
          .orderBy('timestamp')
          .where("tags", arrayContains: searchQuery)
          .snapshots(),
      builder: (context, snapshot) {
        return (snapshot.hasData)
            ? snapshot.data.documents.length as int > 0
                ? ListView.builder(
                    itemCount: snapshot.data.documents.length as int,
                    itemBuilder: (context, index) {
                      DocumentSnapshot doc =
                          snapshot.data.documents[index] as DocumentSnapshot;
                      final Question model = Question.fromMap(doc.data());
                      return QuestionsTile(question: model);
                    },
                  )
                : searchQuery.isNotEmpty
                    ? const Center(
                        child: NotFoundPage(
                            path: 'assets/notfound.svg',
                            text: "No question found for this match"),
                      )
                    : Container()
            : Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching ? _buildSearchField() : const Text('Search'),
        actions: _buildActions(),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: searchedList(),
      ),
    );
  }
}
