import 'package:stroll_t1/features/task1/domain/repo.dart';
import 'package:stroll_t1/features/task1/data/models/questiion_model.dart';

class RepoImpl implements Repo {
  @override
  List<QuestiionModel> getQuestions() {
    return [
      QuestiionModel(
        question: 'What is your favorite time of the day?',
        options: [
          Option(text: "The peace in the early mornings", tag: 'A'),
          Option(text: "The magical golden hours", tag: 'B'),
          Option(text: "Wind-down time after dinners", tag: 'C'),
          Option(text: "The serenity past midnight", tag: 'D'),
        ],
      ),
      QuestiionModel(
        question: 'What is your favorite season?',
        options: [
          Option(text: "Spring blooms", tag: 'A'),
          Option(text: "Summer sunshine", tag: 'B'),
          Option(text: "Autumn leaves", tag: 'C'),
          Option(text: "Winter wonderland", tag: 'D'),
        ],
      ),
      QuestiionModel(
        question: 'What is your favorite type of weather?',
        options: [
          Option(text: "Sunny and warm", tag: 'A'),
          Option(text: "Cool and breezy", tag: 'B'),
          Option(text: "Rainy and cozy", tag: 'C'),
          Option(text: "Snowy and serene", tag: 'D'),
        ],
      ),
    ];
  }
}
