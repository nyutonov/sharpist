import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharpist/presentation/screens/task2/task2_write_screen.dart';
import 'package:sharpist/presentation/widgets/button_widget.dart';

import '../../../color/app_color.dart';
import '../../../utils/utils.dart';
import '../../widgets/text_widget.dart';

class Task2Screen extends StatefulWidget {
  const Task2Screen({super.key});

  @override
  State<Task2Screen> createState() => _Task2ScreenState();
}

class _Task2ScreenState extends State<Task2Screen> {
  final FlutterTts _flutterTTS = FlutterTts();

  late final String _text;
  late final int _index;

  int? _currentWordStart;
  int? _currentWordEnd;

  double _right = 0.0;
  int _attempts = 3;

  @override
  void initState() {
    super.initState();

    _index = Utils.getRandomNumber();
    _text = Utils.getTextByIndex(_index);
    initTTS();
  }

  @override
  void dispose() {
    super.dispose();

    _flutterTTS.stop();
  }

  initTTS() async {
    _flutterTTS.setLanguage('en-US');
    _flutterTTS.setVoice(
        {
          "name": "English",
          "locale": "en-US"
        }
    );
    _flutterTTS.setProgressHandler((text, start, end, word) {
      _currentWordStart = start;
      _currentWordEnd = end;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Task 2',
          fontSize: 24,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16
        ),
        child: Column(
          children: [
            const Spacer(),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: _text.substring(0, _currentWordStart),
                    style: GoogleFonts.montserrat(
                      color: AppColor.black,
                      height: 1.5,
                    ),
                  ),
                  if (_currentWordStart != null)
                    TextSpan(
                      text: _text.substring(_currentWordStart!, _currentWordEnd),
                      style: GoogleFonts.montserrat(
                        color: AppColor.white,
                        backgroundColor: AppColor.primary,
                        height: 1.5,
                      ),
                    ),
                  if (_currentWordEnd != null)
                    TextSpan(
                      text: _text.substring(_currentWordEnd!),
                      style: GoogleFonts.montserrat(
                        color: AppColor.black,
                        height: 1.5,
                      ),
                    )
                ]
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    right: _right,
                    top: 0,
                    bottom: 0,
                    left: 0,
                    duration: const Duration(milliseconds: 300),
                    child: ButtonWidget(
                      widget: const Center(
                        child: TextWidget(
                          text: 'Repeat',
                          fontSize: 18,
                          color: AppColor.white,
                        ),
                      ),
                      color: AppColor.primary,
                      onPressed: () {
                        if (_right == 32) return;

                        _right = 32;

                        Timer(
                          const Duration(seconds: 1),
                          () {
                            _right = 0;
                            if (_attempts != 0) {
                              _attempts--;
                            }

                            setState(() {});
                          },
                        );

                        if (_attempts != 0) {
                          _flutterTTS.speak(_text);
                        }

                        setState(() {});
                      },
                      height: 56,
                    ),
                  ),
                  if (_right == 32) Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Center(
                      child: Animate(
                        child: (_attempts != 0)
                          ? TextWidget(
                              text: (_attempts - 1).toString(),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            )
                              .animate()
                              .fade()
                              .slide()
                              .tint(color: AppColor.primary)
                          : const TextWidget(
                              text: '0',
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            )
                              .animate()
                              .tint(color: Colors.red)
                              .then()
                              .shake(rotation: 0.4),
                      ),
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            ButtonWidget(
              widget: const Center(
                child: TextWidget(
                  text: 'Next',
                  fontSize: 18,
                ),
              ),
              color: AppColor.gray200,
              height: 56,
              onPressed: () {
                _flutterTTS.stop();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Task2WriteScreen(
                        index: _index,
                      );
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
