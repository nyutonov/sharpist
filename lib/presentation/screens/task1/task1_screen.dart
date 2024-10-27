import 'package:flutter/material.dart';
import 'package:sharpist/color/app_color.dart';
import 'package:sharpist/presentation/widgets/button_widget.dart';
import 'package:sharpist/presentation/widgets/text_widget.dart';

import '../../../utils/painter.dart';

class Task1Screen extends StatefulWidget {
  const Task1Screen({super.key});

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {
  List<DrawingPoint?> drawingPoints = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Task 1',
          fontSize: 24,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 86,
                  width: 86,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: AppColor.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Icon(
                      Icons.volume_up_outlined,
                      size: 56,
                      color: AppColor.white,
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                const Icon(
                  Icons.arrow_back,
                  color: AppColor.gray600,
                ),
                const TextWidget(
                  margin: EdgeInsets.only(bottom: 8),
                  text: ' press',
                  fontSize: 18,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  drawingPoints.clear();
                  setState(() {});
                },
                padding: const EdgeInsets.all(20),
                icon: const Icon(
                  Icons.delete_outline,
                  size: 36,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            color: AppColor.gray200,
            child: GestureDetector(
              onPanStart: (details) {
                drawingPoints.add(
                  DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = AppColor.primary
                      ..isAntiAlias = true
                      ..strokeWidth = 5
                      ..strokeCap = StrokeCap.round,
                  ),
                );
                setState(() {});
              },
              onPanUpdate: (details) {
                if (details.localPosition.dy > MediaQuery.of(context).size.height / 2 || details.localPosition.dy < 0) {
                  return;
                }

                drawingPoints.add(
                  DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = AppColor.primary
                      ..isAntiAlias = true
                      ..strokeWidth = 5
                      ..strokeCap = StrokeCap.round,
                  ),
                );
                setState(() {});
              },
              onPanEnd: (details) {
                drawingPoints.add(null);
                setState(() {});
              },
              child: CustomPaint(
                painter: DrawingPainter(drawingPoints),
              ),
            ),
          ),
          const Spacer(),
          ButtonWidget(
              height: 56,
              widget: const Center(
                child: TextWidget(
                  text: 'Check',
                  color: AppColor.white,
                  fontSize: 18,
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: AppColor.primary,
              onPressed: () {}),
          const Spacer()
        ],
      ),
    );
  }
}
