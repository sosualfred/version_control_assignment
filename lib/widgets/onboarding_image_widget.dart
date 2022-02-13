import 'package:flutter/material.dart';

// Widget to be implemented by: Sogo

class OnboardingImageWidget extends StatelessWidget {

  const OnboardingImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              );
  }
}