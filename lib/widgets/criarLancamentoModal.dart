import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CriarLancamentoModal extends StatelessWidget {
  const CriarLancamentoModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('ID do Usuário'),
        Text('Horas gastas'),
        Text('Descrição'),
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
          child: Text('Criar lançamento', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }

}