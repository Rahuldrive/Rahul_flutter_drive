import 'dart:convert';

import 'package:dl_assignment/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProcessScreen extends StatefulWidget {
  const ProcessScreen({super.key});

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  List<dynamic> processItem = [];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    String data = await rootBundle.loadString('assets/process.json');
    setState(() {
      processItem = jsonDecode(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("Process of Driving Licence"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return ListView.builder(
      itemCount: processItem.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
            child: Row(
              children: [
                Icon(
                  Icons.shuffle,
                  size: 32,
                  color: AppColors.primaryColor,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    processItem[index]['option'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
