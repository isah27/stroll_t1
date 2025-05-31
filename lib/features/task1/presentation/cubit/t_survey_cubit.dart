import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stroll_t1/features/task1/domain/repo.dart';
import 'package:stroll_t1/features/task1/data/models/questiion_model.dart';

part 't_survey_state.dart';

class TSurveyCubit extends Cubit<TSurveyState> {
  Repo repo;
  TSurveyCubit(this.repo) : super(TSurveyInitial()) {
    loadQuestions();
  }
  List<QuestiionModel> questions = [];
  void loadQuestions() {
    emit(TSurveyLoading());
    try {
      questions = repo.getQuestions();
      getCurrentQuestion();
      emit(TSurveyLoaded());
    } catch (e) {
      emit(TSurveyError());
    }
  }

  QuestiionModel? currentQuestion;
  getCurrentQuestion() {
    emit(TSurveyLoading());
    if (questions.isNotEmpty) {
      currentQuestion = questions.firstWhere(
        (question) => question.selectedOption == null,
        orElse: () => questions[0],
      );
    }
    emit(TSurveyLoaded());
  }

  nextQuestion() {
    final index = questions.indexOf(currentQuestion!);
    if (index != -1 && index < questions.length - 1) {
      emit(TSurveyLoading());
      final nextIndex = index + 1;
      currentQuestion = questions[nextIndex];
      emit(TSurveyLoaded());
    } else {
      emit(TSurveyError());
    }
  }

  previousQuestion() {
    final index = questions.indexOf(currentQuestion!);
    if (index > 0) {
      emit(TSurveyLoading());
      final previousIndex = index - 1;
      currentQuestion = questions[previousIndex];
      emit(TSurveyLoaded());
    } else {
      emit(TSurveyError());
    }
  }

  selectOption(Option option) {
    if (currentQuestion != null) {
      emit(TSurveyLoading());
      currentQuestion!.selectedOption = option;
      emit(TSurveyLoaded());
    } else {
      emit(TSurveyError());
    }
  }
}
