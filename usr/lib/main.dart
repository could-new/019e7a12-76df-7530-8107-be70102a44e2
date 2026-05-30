import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/question_list_screen.dart';
import 'screens/practice_screen.dart';

void main() {
  runApp(const InterviewPracticeApp());
}

class InterviewPracticeApp extends StatelessWidget {
  const InterviewPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Practice System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/category': (context) => const QuestionListScreen(),
        '/practice': (context) => const PracticeScreen(),
      },
    );
  }
}
