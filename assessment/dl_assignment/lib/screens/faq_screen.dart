import 'dart:convert';
import 'package:dl_assignment/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List<dynamic> options = [];
  int selectedIndex = -1;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    String data = await rootBundle.loadString('assets/faq.json');
    setState(() {
      options = jsonDecode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("FAQ"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return ListView.builder(
      itemCount: options.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = selectedIndex == index ? -1 : index;
                });
              },
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.question_mark_outlined,
                        size: 32,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        options[index]['option'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (selectedIndex == index)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: AppColors.primaryColor,
                child: Text(
                  options[index]['information'],
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
