class QuestiionModel {
  final String question;
  final List<Option> options;
  Option? selectedOption;
  QuestiionModel({
    required this.question,
    required this.options,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final String tag;

  Option({required this.text, required this.tag});
}
