import 'package:flutter/material.dart';

// Widget to be implemented by: Lewis
class OnboardingSubHeadingText extends StatelessWidget {
  const OnboardingSubHeadingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Explore the all new way to build",
          style: TextStyle(fontSize: 20),
        ),
        Text("your fitness and find the", style: TextStyle(fontSize: 20)),
        Text("perfect fit for you", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
