import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('PD Hours'),
        ElevatedButton(onPressed: (){}, child: Text('Lançar horas'))
      ],
    );
  }

}