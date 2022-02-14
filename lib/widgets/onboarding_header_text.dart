import 'package:flutter/material.dart';

// Widget to be implemented by: Lewis
class OnboardingSubHeadingText extends StatelessWidget {
  const OnboardingSubHeadingText({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          content,
          style: TextStyle(fontSize: 15, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
