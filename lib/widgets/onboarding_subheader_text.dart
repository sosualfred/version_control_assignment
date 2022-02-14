import 'package:flutter/material.dart';

// Widget to be implemented by: Lewis
class OnboardingHeaderText extends StatelessWidget {
  const OnboardingHeaderText({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        content,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
      ),
    );
  }
}
