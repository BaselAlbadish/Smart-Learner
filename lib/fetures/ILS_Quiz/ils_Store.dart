import 'package:smart_learner/models/student.dart';

class IlsStore {
  static int inputResult = 0;
  static int perceptionResult = 0;
  static int processingResult = 0;
  static int understandingResult = 0;

  static List<String> subCourses = [];
  static List<String> previousKnowledge = [];
  static List<String> curriculum = [];
  static List<String> studyPlan = [];
  static String goal = "";
  static String bio = "";

  static int studentId = 0;
  static Student student = Student();

  static String name = "";
  static String email = "";
  static String password = "";
  static String accountType = "";

  static getCurriculum() {
    if (previousKnowledge != []) {
      List<String> temp = subCourses;
      for (int i = 0; i < previousKnowledge.length; i++) {
        temp.remove(previousKnowledge[i]);
      }
      curriculum = temp;
    } else {
      curriculum = subCourses;
    }
  }

  static calculate(int stackIndex, int answerIndex) {
    if (stackIndex == 0) {
      if (answerIndex == 1) {
        inputResult++;
      } else {
        inputResult--;
      }
    } else if (stackIndex == 1) {
      if (answerIndex == 1) {
        perceptionResult++;
      } else {
        perceptionResult--;
      }
    } else if (stackIndex == 2) {
      if (answerIndex == 1) {
        processingResult++;
      } else {
        processingResult--;
      }
    } else {
      if (answerIndex == 1) {
        understandingResult++;
      } else {
        understandingResult--;
      }
    }
  }

  static List<String> goals = [
    "Aerospace (Ae)",
    "Anthropology (An)",
    "Applied & Computational Math (ACM)",
    "Applied Mechanics (AM)",
    "Applied Physics (APh)",
    "Astrophysics (Ay)",
    "Biochemistry & Molecular Biophysics (BMB)",
    "Bioengineering (BE)",
    "Biology (Bi)",
    "Business Economics & Management (BEM)",
    "Chemical Engineering (ChE)",
    "Chemistry (Ch)",
    "Civil Engineering (CE)",
    "Computation & Neural Sys(E&AS) (CNS)",
    "Computer Science (CS)",
    "Computing and Mathematical Sciences (CMS)",
    "Control & Dynamical Systems (CDS)",
    "Economics (Ec)",
    "Electrical Engineering (EE)",
    "Energy Science and Technology (EST)",
    "Engineering (E)",
    "English (En)",
    "English as a Second Language (ESL)",
    "Environmental Science & Engineering (ESE)",
    "Freshman Seminars (FS)",
    "Geology (Ge)",
    "History (H)",
    "History and Philosophy of Science (HPS)",
    "Humanities (Hum)",
    "Information and Data Sciences (IDS)",
    "Information Science and Technology (IST)",
    "Languages (L)",
    "Law (Law)",
    "Materials Science (MS)",
    "Mathematics (Ma)",
    "Mechanical Engineering (ME)",
    "Medical Engineering (MedE)",
    "Music (Mu)",
    "Neurobiology (NB)",
    "Performing and Visual Arts (PVA)",
    "Philosophy (Pl)",
    "Physical Education (PE)",
    "Physics (Ph)",
    "Political Science (PS)",
    "Psychology (Psy)",
    "Scientific and Engineering Communication (SEC)",
    "Social Science (SS)",
    "Student Activities (SA)",
    'Visual Culture (VC)',
    "Writing (Wr)",
  ];
}
