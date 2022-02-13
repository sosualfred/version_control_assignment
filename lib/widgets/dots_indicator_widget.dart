import 'package:flutter/material.dart';

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 10,
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 20,
          height: 10,
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 20,
          height: 10,
          color: Colors.black,
        ),
      ],
    );
  }
}
