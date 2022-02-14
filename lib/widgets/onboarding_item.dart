import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:version_control_assignment/widgets/onboarding_header_text.dart';
import 'package:version_control_assignment/widgets/onboarding_image_widget.dart';
import 'package:version_control_assignment/widgets/onboarding_subheader_text.dart';
import 'package:version_control_assignment/widgets/primary_button.dart';
import 'package:version_control_assignment/widgets/secondary_button.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    Key? key,
    required this.controller,
    required this.image,
    required this.header,
    required this.subHeader,
    required this.primaryAction,
    required this.secondaryAction,
  }) : super(key: key);

  final String image;
  final String header;
  final String subHeader;
  final Function primaryAction;
  final Function secondaryAction;

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingImageWidget(
          image: image,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  OnboardingHeaderText(
                    content: header,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OnboardingSubHeadingText(
                    content: subHeader,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blue,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SecondaryButton(
                        onPress: secondaryAction,
                      ),
                      PrimaryButton(
                        onPress: primaryAction,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
