class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffeledAnswers() {
    final List<String> shuffeled = List.of(answers);
    shuffeled.shuffle();
    return shuffeled;
  }
}