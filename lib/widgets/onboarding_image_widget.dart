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
      margin: EdgeInsets.only(bottom: 180),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            'assets/images/fit4.jpg',
          ),
        ),
      ),
    );
  }
}
