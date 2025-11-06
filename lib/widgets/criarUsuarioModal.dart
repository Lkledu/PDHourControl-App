import 'package:flutter/material.dart';

class CriarUsuarioModal extends StatelessWidget {
  const CriarUsuarioModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Nome do Usuário'),
        TextField(),
        Text('Horas estimadas de trabalho'),
        TextField(),
        Text('Squad'),
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
          child: Text('Criar Usuário', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}