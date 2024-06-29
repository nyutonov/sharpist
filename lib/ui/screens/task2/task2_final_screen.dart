import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharpist/ui/widgets/button_widget.dart';

import '../../../color/app_color.dart';
import '../../../utils/utils.dart';
import '../../widgets/text_widget.dart';

class Task2FinalScreen extends StatefulWidget {
  final int index;
  final List<int> textIndexes;

  const Task2FinalScreen({
    super.key,
    required this.index,
    required this.textIndexes,
  });

  @override
  State<Task2FinalScreen> createState() => _Task2FinalScreenState();
}

class _Task2FinalScreenState extends State<Task2FinalScreen> {
  @override
  Widget build(BuildContext context) {
    final text = Utils.getTextByIndex(widget.index).split(" ");

    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Task 2',
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const Spacer(),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  for (int i = 0; i < text.length; i++)
                    TextSpan(
                      text: "${text[i]} ",
                      style: GoogleFonts.montserrat(
                        color: (widget.textIndexes.contains(i))
                            ? Colors.red
                            : Colors.green,
                        height: 1.5,
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            ButtonWidget(
              height: 56,
              widget: const Center(
                child: TextWidget(
                  text: 'Okay',
                  fontSize: 18,
                  color: AppColor.white,
                ),
              ),
              color: Colors.blue,
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
