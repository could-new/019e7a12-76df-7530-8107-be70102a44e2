import 'package:flutter/material.dart';
import '../data/models.dart';

class QuestionListScreen extends StatelessWidget {
  const QuestionListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as InterviewCategory;
    final questions = MockData.questions.where((q) => q.categoryId == category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color.withOpacity(0.1),
      ),
      body: SafeArea(
        child: questions.isEmpty 
          ? Center(
              child: Text(
                'More questions coming soon!',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      question.question,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/practice',
                        arguments: question,
                      );
                    },
                  ),
                );
              },
            ),
      ),
    );
  }
}
