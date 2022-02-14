import 'package:flutter/material.dart';

// Widget to be implemented by: Sogo

class OnboardingImageWidget extends StatelessWidget {
  const OnboardingImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 180),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
