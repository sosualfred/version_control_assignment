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
    return ElevatedButton(
      onPressed: () => onPress(),
      child: const Text(
        'Skip',
        style: TextStyle(fontSize: 20, color: Colors.grey),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: const Size(100, 50),
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // <-- Radius
        ),
      ),
    );
  }
}
