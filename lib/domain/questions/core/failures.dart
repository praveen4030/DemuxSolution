import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.fetchData() = FetchData;
  const factory Failure.rulesException() = RulesException;

}
