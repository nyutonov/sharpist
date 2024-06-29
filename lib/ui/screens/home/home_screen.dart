import 'package:flutter/material.dart';
import 'package:sharpist/ui/screens/task1/task1_screen.dart';
import 'package:sharpist/ui/widgets/text_widget.dart';

import '../task2/task2_screen.dart';
import '../task3/task3_screen.dart';
import '../task4/task4_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Home',
          fontSize: 18,
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const TextWidget(
              text: 'Task1',
              align: TextAlign.start,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Task1Screen();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: const TextWidget(
              text: 'Task2',
              align: TextAlign.start,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Task2Screen();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: const TextWidget(
              text: 'Task3',
              align: TextAlign.start,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Task3Screen();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: const TextWidget(
              text: 'Task4',
              align: TextAlign.start,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Task4Screen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
