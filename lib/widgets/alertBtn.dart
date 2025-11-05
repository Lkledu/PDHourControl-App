import 'package:flutter/material.dart';

class AlertBtn extends StatelessWidget {
  String text;
  Widget content;

  AlertBtn({super.key, required this.text, required this.content});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                scrollable: true,
                title: Text(text),
                content: content,
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close ')
                  )
                ],
              );
            }
        );
      },
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