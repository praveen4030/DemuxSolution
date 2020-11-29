// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/core/firebase_injectable_modules.dart';
import 'domain/questions/i_questions.dart';
import 'application/questions/questions_bloc.dart';
import 'infrastructure/questions/question_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<IQuestions>(
      () => QuestionsRepository(get<FirebaseFirestore>()));
  gh.factory<QuestionsBloc>(() => QuestionsBloc(get<IQuestions>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
