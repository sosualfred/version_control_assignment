import 'package:flutter/material.dart';

// Widget to be implemented by: Emmanuel
class SecondaryButton extends StatelessWidget {
  SecondaryButton({required this.onPress});

  final Function onPress;

  BoxDecoration _boxSettings(color) {
    return BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30)));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onPress(),
      child: Container(
        height: 50,
        width: 100,
        padding: const EdgeInsets.all(12.0),
        decoration: _boxSettings(Colors.white),
        child: const Text(
          "SKIP",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 22),
        ),
      ),
    );
  }
}
