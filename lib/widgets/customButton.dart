import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Function function;

  CustomButton({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function.call(),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(0xFF4263EB)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      child: Text(text, style: TextStyle(color: Colors.white),),
    );
  }

}