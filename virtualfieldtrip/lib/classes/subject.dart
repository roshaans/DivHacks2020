import 'simulation.dart';

class Subject {
  String subjectTitle;
  List<Simulation> simulations;

  Subject(this.subjectTitle, this.simulations);

  String get getSubjectTitle => subjectTitle;

  set setSubjectTitle(String subjectTitle) => this.subjectTitle = subjectTitle;

  List get getSimulations => simulations;

  set setSimulations(List simulations) => this.simulations = simulations;
}

Subject g1 = Subject("Grade 1", [mona_lisa, dinosaurs, zoo, warriors, jewelry]);
Subject g2 = Subject("Grade 2", [mona_lisa, dinosaurs, zoo, warriors, jewelry]);
Subject g3 = Subject("Grade 3", [mona_lisa, dinosaurs, zoo, warriors, jewelry]);
Subject g4 = Subject("Grade 4", [mona_lisa, dinosaurs, zoo, warriors, jewelry]);
Subject g5 = Subject("Grade 5", [mona_lisa, dinosaurs, zoo, warriors, jewelry]);

List<Subject> mysubjects = [g1, g2, g3, g4, g5];
