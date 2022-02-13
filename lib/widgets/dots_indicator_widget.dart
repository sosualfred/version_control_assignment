import 'package:flutter/material.dart';

// Widget to be implemented by: Slim

// DONE AT : 1:40 PM - The _boxSetting function receieves color as argument to return a box decoration
class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
  }) : super(key: key);

  BoxDecoration _boxSettings(color) {
    return BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 30,
          height: 10,
          decoration: _boxSettings(Colors.blue),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 20,
          height: 10,
          decoration: _boxSettings(Colors.blueGrey),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 20,
          height: 10,
          //color: Colors.black,
          decoration: _boxSettings(Colors.blueGrey),
        ),
      ],
    );
  }
}
