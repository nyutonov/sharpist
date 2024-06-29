import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharpist/data/response/task2_response.dart';
import 'package:sharpist/provider/api_provider.dart';
import 'package:sharpist/ui/screens/task2/task2_final_screen.dart';
import 'package:sharpist/ui/widgets/button_widget.dart';

import '../../../color/app_color.dart';
import '../../widgets/text_widget.dart';

class Task2WriteScreen extends StatefulWidget {
  final int index;

  const Task2WriteScreen({
    super.key,
    required this.index,
  });

  @override
  State<Task2WriteScreen> createState() => _Task2WriteScreenState();
}

class _Task2WriteScreenState extends State<Task2WriteScreen> {
  final TextEditingController controller = TextEditingController();
  bool loading = false;

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
          horizontal: 16,
        ),
        child: Column(
          children: [
            const Spacer(),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Write the words',
                hintStyle: GoogleFonts.montserrat(
                  color: AppColor.gray400,
                  height: 1.5,
                ),
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              maxLines: 10,
              style: GoogleFonts.montserrat(
                color: AppColor.gray900,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
            const Spacer(),
            ButtonWidget(
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
                        text: 'Submit',
                        fontSize: 18,
                        color: AppColor.white,
                      ),
              ),
              color: Colors.blue,
              onTap: () {
                if (loading) {
                  return;
                }

                final provider = ApiProvider();

                loading = true;
                setState(() {});

                final body = { "user_text": controller.text };

                provider.postRequest(
                  "http://api_sh.ucteam.tech/sharpsit/check_text?text_num=${widget.index}",
                  jsonEncode(body),
                ).then((value) {
                  if (value.isSuccess) {
                    loading = false;

                    final response = Task2Response.fromJson(value.result);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Task2FinalScreen(
                          index: widget.index,
                          textIndexes: response.response ?? [],
                        ),
                      ),
                    );
                  } else {
                    // ...
                  }
                });
              },
              height: 56,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
