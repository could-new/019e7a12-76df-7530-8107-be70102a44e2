import 'package:flutter/material.dart';

class InterviewCategory {
  final String id;
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const InterviewCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}

class InterviewQuestion {
  final String id;
  final String categoryId;
  final String question;
  final String hint;
  final String answer;

  const InterviewQuestion({
    required this.id,
    required this.categoryId,
    required this.question,
    required this.hint,
    required this.answer,
  });
}

class MockData {
  static const categories = [
    InterviewCategory(
      id: 'flutter',
      title: 'Flutter & Dart',
      description: 'Core concepts, widgets, state management, and Dart language features.',
      icon: Icons.flutter_dash,
      color: Colors.blue,
    ),
    InterviewCategory(
      id: 'dsa',
      title: 'Data Structures',
      description: 'Common algorithms, arrays, trees, graphs, and big-O notation.',
      icon: Icons.account_tree,
      color: Colors.green,
    ),
    InterviewCategory(
      id: 'sysdesign',
      title: 'System Design',
      description: 'Architecture, scalability, databases, and microservices.',
      icon: Icons.architecture,
      color: Colors.orange,
    ),
    InterviewCategory(
      id: 'behavioral',
      title: 'Behavioral & HR',
      description: 'STAR method, leadership principles, and cultural fit.',
      icon: Icons.people,
      color: Colors.purple,
    ),
  ];

  static const questions = [
    InterviewQuestion(
      id: 'f1',
      categoryId: 'flutter',
      question: 'Explain the difference between Stateless and Stateful widgets.',
      hint: 'Think about mutability and the build method lifecycle.',
      answer: 'Stateless widgets are immutable and their UI cannot change dynamically once built. Stateful widgets maintain internal state that can change over time, triggering rebuilds via setState().',
    ),
    InterviewQuestion(
      id: 'f2',
      categoryId: 'flutter',
      question: 'What is the purpose of the BuildContext?',
      hint: 'How do widgets locate their position in the tree?',
      answer: 'BuildContext is a handle to the location of a widget in the widget tree. It is used to look up inherited widgets, theme data, and media queries.',
    ),
    InterviewQuestion(
      id: 'ds1',
      categoryId: 'dsa',
      question: 'What is the time complexity of searching in a Binary Search Tree (BST)?',
      hint: 'Consider both average and worst-case scenarios.',
      answer: 'Average case: O(log n). Worst case (unbalanced tree): O(n).',
    ),
    InterviewQuestion(
      id: 'sd1',
      categoryId: 'sysdesign',
      question: 'Explain the difference between horizontal and vertical scaling.',
      hint: 'More machines vs. bigger machines.',
      answer: 'Vertical scaling (scaling up) means adding more power (CPU, RAM) to an existing machine. Horizontal scaling (scaling out) means adding more machines to a cluster.',
    ),
  ];
}
