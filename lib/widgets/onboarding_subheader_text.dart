import 'package:flutter/material.dart';

// Widget to be implemented by: Lewis
class OnboardingHeaderText extends StatelessWidget {
  const OnboardingHeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        "Welcome!",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
      ),
    );
  }
}
