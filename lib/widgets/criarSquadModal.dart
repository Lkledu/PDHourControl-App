
import 'package:flutter/material.dart';

class CriarSquadModal extends StatelessWidget {
  const CriarSquadModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Nome da Squad'),
        TextField(),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xFF4263EB)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          child: Text('Criar Squad', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }

}