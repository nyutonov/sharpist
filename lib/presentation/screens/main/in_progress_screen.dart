import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InProgressScreen extends StatelessWidget {
  const InProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/chevron-left.svg',
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),
      body: const Center(
        child: Text(
          "In Progress ...",
        )
      ),
    );
  }
}
