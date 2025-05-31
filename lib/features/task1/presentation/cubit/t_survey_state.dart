part of 't_survey_cubit.dart';

sealed class TSurveyState extends Equatable {
  const TSurveyState();

  @override
  List<Object> get props => [];
}

final class TSurveyInitial extends TSurveyState {}

final class TSurveyLoading extends TSurveyState {}

final class TSurveyLoaded extends TSurveyState {}

final class TSurveyError extends TSurveyState {}
