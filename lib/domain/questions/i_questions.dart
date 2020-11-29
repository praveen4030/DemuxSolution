import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:demux_assignment/domain/questions/core/failures.dart';
import 'package:demux_assignment/domain/questions/question.dart';

abstract class IQuestions{
  Future<Either<Failure,List<Question>>> getFirstQuestions();
  Future<Either<Failure,List<Question>>> getMoreQuestions(Timestamp timestamp);
  Future<Either<Failure,List<Question>>> getFirstSearchedQuestions();
  Future<Either<Failure,List<Question>>> getMoreSearchedQuestions(Timestamp timestamp);
}