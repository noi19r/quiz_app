import 'package:flutter/cupertino.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    SizedBox(height: 5),
                    Text(data['user_anwser'] as String),
                    SizedBox(height: 5),
                    Text(data['correct_answer'] as String),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
