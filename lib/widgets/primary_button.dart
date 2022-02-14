import 'package:flutter/material.dart';

// Widget to be implemented by: Emmanuel

class PrimaryButton extends StatelessWidget {
  PrimaryButton({required this.onPress});

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      child: const Text(
        'NEXT',
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 50),
        primary: const Color(0xff20293A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // <-- Radius
        ),
      ),
    );
  }
}
