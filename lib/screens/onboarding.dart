import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:version_control_assignment/screens/homescreen.dart';
import 'package:version_control_assignment/widgets/onboarding_header_text.dart';
import 'package:version_control_assignment/widgets/onboarding_image_widget.dart';
import 'package:version_control_assignment/widgets/onboarding_subheader_text.dart';
import 'package:version_control_assignment/widgets/primary_button.dart';
import 'package:version_control_assignment/widgets/secondary_button.dart';

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
          Stack(
            children: [
              OnboardingImageWidget(
                image: 'assets/images/fit2.jpg',
              ),
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
                              onPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                            PrimaryButton(
                              onPress: () {
                                controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeOut,
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Stack(
            children: [
              OnboardingImageWidget(
                image: 'assets/images/fit1.jpg',
              ),
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
                        // DotsIndicatorWidget(),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Colors.red,
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
                              onPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                            PrimaryButton(
                              onPress: () {
                                controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeOut,
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Stack(
            children: [
              OnboardingImageWidget(
                image: 'assets/images/fit4.jpg',
              ),
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
                        SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Colors.purple,
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
                              onPress: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                            PrimaryButton(
                              onPress: () {
                                // controller.nextPage(
                                //   duration: Duration(milliseconds: 500),
                                //   curve: Curves.easeOut,
                                // );
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
