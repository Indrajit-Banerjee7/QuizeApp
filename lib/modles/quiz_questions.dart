class QuizQuestions {

  const QuizQuestions(this.text , this.answers);

  final String text ;
  final List<String> answers ; 

  List<String> suffeledans(){
    final dublicatedans = List.of(answers);
    dublicatedans.shuffle();
    return dublicatedans ;
  }
}