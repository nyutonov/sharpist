import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:sharpist/ui/widgets/button_widget.dart';
import 'package:vibration/vibration.dart';

import '../../../color/app_color.dart';
import '../../widgets/text_widget.dart';

class Task3Screen extends StatefulWidget {
  const Task3Screen({super.key});

  @override
  State<Task3Screen> createState() => _Task3ScreenState();
}

class _Task3ScreenState extends State<Task3Screen> {
  final List<int> numbers = List.generate(16, (index) => index + 1);
  int lastNumber = 0;
  Timer? timerForWrong;
  Timer? timerForSeconds;
  int seconds = 0;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();

    numbers.shuffle();
    timerForSeconds = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds = timer.tick;

      setState(() {});
    });
  }

  @override
  void dispose() {
    timerForSeconds?.cancel();
    timerForWrong?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Task 3',
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                TextWidget(
                  text: 'Time: ${(seconds ~/ 60).toString().padLeft(2, '0')}:${(seconds % 60).toString().padLeft(2, '0')}',
                  fontSize: 20,
                  color: Colors.blue,
                ),
                const Spacer(),
                Builder(
                  builder: (context) {
                    double size = MediaQuery.of(context).size.width;

                    return Container(
                      height: size - 32,
                      width: size - 32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.black,
                          width: 1,
                        ),
                      ),
                      child: Wrap(
                        children: [
                          for (int number in numbers)
                            InkWell(
                              onTap: () async {
                                if (lastNumber >= number) {
                                  return;
                                }

                                if (lastNumber + 1 == number) {
                                  lastNumber = number;

                                  if (lastNumber == 16) {
                                    timerForSeconds?.cancel();

                                    bool hasVibrator = await Vibration.hasVibrator() ?? false;
                                    if (hasVibrator) {
                                      Vibration.vibrate(duration: 1000);
                                    }

                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const TextWidget(
                                            text: 'Congratulations!',
                                            fontSize: 24,
                                          ),
                                          content: TextWidget(
                                            text: 'You have successfully completed the task!\n\nTime: ${(seconds ~/ 60).toString().padLeft(2, '0')}:${(seconds % 60).toString().padLeft(2, '0')}',
                                            maxLines: 4,
                                            fontSize: 18,
                                          ),
                                          actions: [
                                            ButtonWidget(
                                              widget: const Center(
                                                child: TextWidget(
                                                  text: 'OK',
                                                  fontSize: 18,
                                                  color: AppColor.white,
                                                ),
                                              ),
                                              color: Colors.blue,
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              height: 56,
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  setState(() {});
                                } else {
                                  bool hasVibrator = await Vibration.hasVibrator() ?? false;
                                  if (hasVibrator) {
                                    Vibration.vibrate();
                                  }

                                  isWrong = true;
                                  setState(() {});
                                  timerForWrong = Timer(const Duration(milliseconds: 500), () {
                                    isWrong = false;
                                    lastNumber = 0;

                                    setState(() {});
                                  });
                                }
                              },
                              child: Container(
                                height: (size - 34) / 4,
                                width: (size - 34) / 4,
                                decoration: BoxDecoration(
                                  color: (lastNumber >= number)
                                      ? (isWrong ? Colors.red : Colors.green)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: AppColor.black,
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: TextWidget(
                                    text: number.toString(),
                                    fontSize: 24,
                                    color: (lastNumber >= number)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  }
                ),
                const Spacer(flex: 2),
              ],
            ),
            if (lastNumber == 16)
              Positioned(
                bottom: -70,
                left: 0,
                right: 0,
                child: Lottie.asset(
                  "assets/lottie/congratulations.json",
                ),
              ),
          ],
        ),
      ),
    );
  }
}