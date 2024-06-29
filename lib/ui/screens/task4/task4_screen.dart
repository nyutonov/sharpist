import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:sharpist/color/app_color.dart';
import 'package:sharpist/data/response/task4_response.dart';
import 'package:sharpist/ui/widgets/button_widget.dart';
import 'package:sharpist/ui/widgets/text_widget.dart';
import 'package:image/image.dart' as IMG;

import '../../../utils/painter.dart';
import 'package:screenshot/screenshot.dart';

class Task4Screen extends StatefulWidget {
  const Task4Screen({super.key});

  @override
  State<Task4Screen> createState() => _Task4ScreenState();
}

class _Task4ScreenState extends State<Task4Screen> {
  List<DrawingPoint?> drawingPoints = [];
  List<Color> colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow, Colors.orange, Colors.purple, Colors.black];
  Color selectedColor = Colors.blue;
  Uint8List? _imageFile;
  ScreenshotController screenshotsController = ScreenshotController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width - 32;

    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        title: const TextWidget(
          text: 'Task 4',
          fontSize: 24,
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset(
                        "assets/images/image1.png",
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const TextWidget(
                          text: 'OK',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.image,
              size: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: colors.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    if (index == 0)
                      const SizedBox(width: 16),
                    InkWell(
                      onTap: () {
                        selectedColor = colors[index];

                        setState(() {});
                      },
                      splashColor: Colors.white,
                      child: Ink(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: colors[index],
                          border: Border.all(
                            color: (selectedColor == colors[index]) ? Colors.white : Colors.transparent,
                            width: 8,
                          ),
                        ),
                      ),
                    ),
                    if (index == colors.length - 1)
                      const SizedBox(width: 16),
                  ],
                );
              },
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
            color: AppColor.gray100,
            child: Screenshot(
              controller: screenshotsController,
              child: Container(
                width: size,
                height: size,
                color: Colors.transparent,
                child: GestureDetector(
                  onPanStart: (details) {
                    drawingPoints.add(
                      DrawingPoint(
                        details.localPosition,
                        Paint()
                          ..color = selectedColor
                          ..isAntiAlias = true
                          ..strokeWidth = 5
                          ..strokeCap = StrokeCap.round,
                      ),
                    );
                    setState(() {});
                  },
                  onPanUpdate: (details) {
                    drawingPoints.add(
                      DrawingPoint(
                        details.localPosition,
                        Paint()
                          ..color = selectedColor
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
            ),
          ),
          const Spacer(),
          ButtonWidget(
            height: 56,
            widget: Center(
              child: (loading)
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: AppColor.white,
                      ),
                    )
                  : const TextWidget(
                      text: 'Check',
                      color: AppColor.white,
                      fontSize: 18,
                    ),
            ),
            margin: const EdgeInsets.symmetric(
                horizontal: 16
            ),
            color: Colors.blue,
            onTap: () async {
              if (loading) {
                return;
              }

              loading = true;
              setState(() {});

              final screenshot = await screenshotsController.capture();

              _imageFile = screenshot;

              final ByteData bytes = await rootBundle.load('assets/images/image1.png');
              final Uint8List uInt8List = bytes.buffer.asUint8List();

              IMG.Image? img = IMG.decodeImage(uInt8List);
              IMG.Image resized = IMG.copyResize(img!, width: size.toInt(), height: size.toInt());
              Uint8List resizedImg = Uint8List.fromList(IMG.encodePng(resized));

              IMG.Image? img1 = IMG.decodeImage(_imageFile!);
              IMG.Image resized1 = IMG.copyResize(img1!, width: size.toInt(), height: size.toInt());
              Uint8List resizedImg1 = Uint8List.fromList(IMG.encodePng(resized1));

              String url = "https://im.qodirov.uz/check";

              var request = MultipartRequest(
                'POST',
                Uri.parse(url),
              );

              request.headers['Content-Type'] = 'application/json';

              request.files.addAll(
                [
                  MultipartFile.fromBytes(
                    'files',
                    resizedImg,
                    filename: "image1.png",
                  ),
                  MultipartFile.fromBytes(
                    'files',
                    resizedImg1,
                    filename: "image2.png",
                  ),
                ],
              );

              var response = await request.send();

              String responseData = await response.stream.bytesToString();

              final task4Response = Task4Response.fromJson(jsonDecode(responseData));

              loading = false;
              setState(() {});

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const TextWidget(
                      text: 'Result',
                      fontSize: 24,
                    ),
                    content: TextWidget(
                      text: task4Response.similarity ?? "",
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
            },
          ),
          const Spacer()
        ],
      ),
    );
  }
}