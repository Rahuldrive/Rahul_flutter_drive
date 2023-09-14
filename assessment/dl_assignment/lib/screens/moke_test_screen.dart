import 'dart:async';

import 'package:dl_assignment/constant/app_colors.dart';
import 'package:dl_assignment/model/question_model.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<QuestionModel> questions = [
    QuestionModel(
      "What is the capital of France?",
      ["Madrid", "Berlin", "Paris"],
      2,
    ),
  ];

  int currentQuestionIndex = 0;
  bool isAnswered = false;

  void answerQuestion(int chosenOptionIndex) {
    if (!isAnswered) {
      isAnswered = true;

      if (chosenOptionIndex == questions[currentQuestionIndex].correctOption) {
        print('Correct!');
      } else {
        print('Incorrect!');
      }

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          isAnswered = false;
          if (currentQuestionIndex < questions.length - 1) {
            currentQuestionIndex++;
          } else {
            print('End of quiz');
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Test"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Row(
                  children: const [
                    Icon(Icons.timer_sharp, size: 28),
                    SizedBox(width: 6),
                    Text(
                      "46",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Sec",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Card(
          //   child: Column(
          //     children: const [
          //       Text(
          //         "7/15",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Text(
          //         "What should you used mobile phone?",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       'Question ${currentQuestionIndex + 1}: ${questions[currentQuestionIndex].question}',
      //       textAlign: TextAlign.center,
      //       style: const TextStyle(fontSize: 20),
      //     ),
      //     const SizedBox(height: 20),
      //     ...questions[currentQuestionIndex]
      //         .options
      //         .asMap()
      //         .entries
      //         .map((entry) {
      //       int index = entry.key;
      //       String option = entry.value;
      //       return ElevatedButton(
      //         onPressed: () {
      //           answerQuestion(index);
      //         },
      //         child: Text(option),
      //       );
      //     }).toList(),
      //     const SizedBox(height: 20),
      //     isAnswered
      //         ? const CircularProgressIndicator()
      //         : const SizedBox(height: 40),
      //   ],
      // ),
    );
  }
}
