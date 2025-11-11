import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../widgets/exam_card.dart';

class ExamListScreen extends StatelessWidget {
  ExamListScreen({Key? key}) : super(key: key);

  final List<Exam> exams = [
    Exam(subject: "МИС 1", dateTime: DateTime(2023, 2, 15, 10, 0), rooms: ["A1", "A2"], isPassed: false),
    Exam(subject: "СП 2", dateTime: DateTime(2025, 1, 28, 9, 30), rooms: ["B3"], isPassed: false),
    Exam(subject: "ООП 3", dateTime: DateTime(2024, 12, 12, 12, 0), rooms: ["Lab1"], isPassed: true),
    Exam(subject: "АПС 4", dateTime: DateTime(2025, 3, 2, 11, 0), rooms: ["C2"], isPassed: false),
    Exam(subject: "ВИС 5", dateTime: DateTime(2022, 9, 25, 10, 0), rooms: ["D4"], isPassed: true),
    Exam(subject: "ИС 6", dateTime: DateTime(2025, 2, 10, 13, 0), rooms: ["Lab2"], isPassed: false),
    Exam(subject: "ОС 7", dateTime: DateTime(2022, 1, 20, 10, 0), rooms: ["A3"], isPassed: false),
    Exam(subject: "АОК 8", dateTime: DateTime(2024, 7, 5, 9, 0), rooms: ["E5"], isPassed: true),
    Exam(subject: "СКИТ 9", dateTime: DateTime(2023, 4, 10, 10, 0), rooms: ["B1"], isPassed: false),
    Exam(subject: "ЕМТ 10", dateTime: DateTime(2025, 3, 20, 14, 0), rooms: ["Lab3"], isPassed: false),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Распоред за испити - 202032"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: exams.length,
              itemBuilder: (context, index) {
                return ExamCard(exam: exams[index]);
              },
            ),
          ),
          Container(
            color: Colors.purple.shade100,
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.book, color: Colors.purple),
                const SizedBox(width: 8),
                Text("Вкупно испити: ${exams.length}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
