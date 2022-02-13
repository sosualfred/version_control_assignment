import 'package:flutter/material.dart';
import 'package:version_control_assignment/widgets/dots_indicator_widget.dart';
import 'package:version_control_assignment/widgets/onboarding_header_text.dart';
import 'package:version_control_assignment/widgets/onboarding_image_widget.dart';
import 'package:version_control_assignment/widgets/onboarding_subheader_text.dart';
import 'package:version_control_assignment/widgets/primary_button.dart';
import 'package:version_control_assignment/widgets/secondary_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingImageWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    OnboardingHeaderText(),
                    SizedBox(
                      height: 30,
                    ),
                    OnboardingSubHeadingText(),
                    SizedBox(
                      height: 30,
                    ),
                    DotsIndicatorWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SecondaryButton(),
                        PrimaryButton(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
