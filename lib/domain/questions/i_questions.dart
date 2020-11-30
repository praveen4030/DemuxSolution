import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:demux_assignment/domain/questions/core/failures.dart';
import 'package:demux_assignment/domain/questions/question.dart';

abstract class IQuestions{
  Future<Either<Failure,List<Question>>> getFirstQuestions(List<String> filtersList);
  Future<Either<Failure,List<Question>>> getMoreQuestions(List<String> filtersList,Timestamp timestamp);
}