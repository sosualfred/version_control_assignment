import 'package:flutter/material.dart';

// Widget to be implemented by: Emmanuel

class PrimaryButton extends StatelessWidget {
  PrimaryButton({required this.onPress});

  final Function onPress;

  BoxDecoration _boxSettings(color) {
    return BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 2,
              blurStyle: BlurStyle.normal)
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        height: 50,
        width: 100,
        padding: const EdgeInsets.all(12.0),
        decoration: _boxSettings(Colors.blueGrey),
        child: const Text(
          "NEXT",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
