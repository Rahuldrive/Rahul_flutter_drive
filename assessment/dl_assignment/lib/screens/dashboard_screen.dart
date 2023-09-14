import 'package:dl_assignment/constant/app_colors.dart';
import 'package:dl_assignment/model/item_model.dart';
import 'package:dl_assignment/screens/faq_screen.dart';
import 'package:dl_assignment/screens/form_screen.dart';
import 'package:dl_assignment/screens/learn_screen.dart';
import 'package:dl_assignment/screens/moke_test_screen.dart';
import 'package:dl_assignment/screens/practice_screen.dart';
import 'package:dl_assignment/screens/process_screen.dart';
import 'package:dl_assignment/screens/rto_office_screen.dart';
import 'package:dl_assignment/screens/statistics_scren.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<ItemModel> items = [
    ItemModel(Icons.chrome_reader_mode, "Learn"),
    ItemModel(Icons.note_alt_outlined, "Practice"),
    ItemModel(Icons.computer_rounded, "Moke Test"),
    ItemModel(Icons.sticky_note_2_rounded, "Marked For Revision"),
    ItemModel(Icons.houseboat_outlined, "RTO Office"),
    ItemModel(Icons.shuffle, "Process"),
    ItemModel(Icons.auto_graph_sharp, "Statistics"),
    ItemModel(Icons.format_shapes_rounded, "Forms"),
    ItemModel(Icons.chat_bubble_outline, "FAQ"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        title: const Text("RTO Driving Licence Test"),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_sharp,
              size: 24,
            ),
          ),
        ],
      ),
      body: _buildMain(),
    );
  }

  Widget _buildMain() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _handleItemTap(index);
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    items[index].icon,
                    size: 48,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    items[index].title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleItemTap(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LearnScreen(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PracticeScreen(),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TestScreen(),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RTOOfficeScreen(),
          ),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProcessScreen(),
          ),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StatisticsScreen(),
          ),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FormScreen(),
          ),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FAQScreen(),
          ),
        );
        break;
    }
  }
}
