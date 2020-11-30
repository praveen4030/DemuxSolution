import 'package:dartz/dartz.dart';
import 'package:demux_assignment/domain/questions/core/failures.dart';
import 'package:demux_assignment/domain/questions/i_questions.dart';
import 'package:demux_assignment/domain/questions/question.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demux_assignment/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as: IQuestions)
class QuestionsRepository extends IQuestions {
  FirebaseFirestore _firestore;

  QuestionsRepository(
    this._firestore,
  );

  @override
  Future<Either<Failure, List<Question>>> getFirstQuestions(
      List<String> filtersList) async {
    try {
      final Query query = filtersList.isEmpty
          ? _firestore.questionsCollection
              .limit(5)
              .orderBy('timestamp', descending: true)
          : _firestore.questionsCollection
              .orderBy('timestamp', descending: true)
              .where("tags", arrayContainsAny: filtersList)
              .limit(5);

      final postsDoc = await query.get();

      final List<Question> postsList = postsDoc.docs
          .map((snapshot) => Question.fromMap(snapshot.data()))
          .toList();
      debugPrint(postsList.toString());
      return right(postsList);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const Failure.rulesException());
      } else {
        return left(const Failure.fetchData());
      }
    }
  }

  @override
  Future<Either<Failure, List<Question>>> getMoreQuestions(
      List<String> filtersList, Timestamp timestamp) async {
    try {
      // Timestamp t = feed.timestamp

      final Query query = filtersList.isEmpty
          ? _firestore.questionsCollection
              .orderBy('timestamp', descending: true)
              .startAfter([timestamp]).limit(5)
          : _firestore.questionsCollection
              .orderBy('timestamp', descending: true)
              .where("tags", arrayContainsAny: filtersList)
              .startAfter([timestamp]).limit(5);
        final questionsDoc = await query.get();      

      final List<Question> postsList = questionsDoc.docs
          .map((snapshot) => Question.fromMap(snapshot.data()))
          .toList();

      return right(postsList);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const Failure.rulesException());
      } else {
        return left(const Failure.fetchData());
      }
    }
  }
}
