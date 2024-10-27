import 'package:flutter/material.dart';
import 'package:sharpist/core/utils/extension_functions.dart';
import 'package:sharpist/presentation/widgets/button_widget.dart';
import 'package:sharpist/presentation/widgets/button_widget.dart';
import 'package:sharpist/presentation/widgets/text_widget.dart';
import 'package:sharpist/router/app_routes.dart';

import '../../../color/app_color.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: TextWidget(
          text: 'Main',
          fontSize: 24,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Start',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.gray200,
              ),
              onPressed: () {
                AppRouter.router.push(Routes.signIn);
              },
              child: Text(
                'I have an account',
                style: context.textStyle.elevatedButtonText.copyWith(
                  color: context.color.grey2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
