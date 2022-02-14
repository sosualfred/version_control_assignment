import 'package:flutter/material.dart';
import 'package:version_control_assignment/screens/homescreen.dart';
import 'package:version_control_assignment/widgets/onboarding_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          OnboardingItem(
            controller: controller,
            image: 'assets/images/fit2.jpg',
            header: "Welcome!",
            subHeader:
                "Explore the all new way to build\nyour fitness and find the\n perfect fit for you",
            secondaryAction: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            primaryAction: () {
              controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          OnboardingItem(
            controller: controller,
            image: 'assets/images/fit1.jpg',
            header: "Customize",
            subHeader:
                "Feel free to adjust your workout\n & diet settings according to\nyour comfort.",
            secondaryAction: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            primaryAction: () {
              controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
          OnboardingItem(
            controller: controller,
            image: 'assets/images/fit4.jpg',
            header: "Let's go...",
            subHeader:
                "Get the new fitness updates\neveryday & improve\nperformance.",
            secondaryAction: () {
              controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
            primaryAction: () {
              controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
              );
            },
          ),
        ],
      ),
    );
  }
}
