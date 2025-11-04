import 'package:flutter/material.dart';
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
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text('Criar lançamento'),
                    content: CriarLancamentoModal(),
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
            child: Text('Lançar horas', style: TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }

}