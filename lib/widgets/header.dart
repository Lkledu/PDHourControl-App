import 'package:flutter/material.dart';
import 'package:pd_hour_control_app/widgets/alertBtn.dart';
import 'package:pd_hour_control_app/widgets/criarLancamentoModal.dart';

class Header extends StatelessWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'PD Hours',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 43.0
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: AlertBtn(
            text: 'Criar lançamento',
            content: CriarLancamentoModal(),
          ),
        )
      ],
    );
  }

}