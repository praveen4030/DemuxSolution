import 'package:dartz/dartz.dart';
import 'package:demux_assignment/domain/questions/core/failures.dart';
import 'package:demux_assignment/domain/questions/i_questions.dart';
import 'package:demux_assignment/domain/questions/question.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demux_assignment/infrastructure/core/firebase_helpers.dart';

@LazySingleton(as : IQuestions)
class QuestionsRepository extends IQuestions{
  FirebaseFirestore _firestore;

  QuestionsRepository(
    this._firestore,
  );

  @override
  Future<Either<Failure, List<Question>>> getFirstQuestions() async {
        try {
      final postsDoc = await _firestore.questionsCollection
          .orderBy('timestamp', descending: true)
          .limit(5)
          .get();

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
  Future<Either<Failure, List<Question>>> getFirstSearchedQuestions() {
    // TODO: implement getFirstSearchedQuestions
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Question>>> getMoreQuestions(Timestamp timestamp) async {
    try {
      // Timestamp t = feed.timestamp

      final questionsDoc = await _firestore.questionsCollection
          .orderBy('timestamp', descending: true)
          .startAfter([timestamp])
          .limit(5)
          .get();

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

  @override
  Future<Either<Failure, List<Question>>> getMoreSearchedQuestions(Timestamp timestamp) {
    // TODO: implement getMoreSearchedQuestions
    throw UnimplementedError();
  }
}