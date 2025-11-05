import 'package:flutter/material.dart';
import 'package:pd_hour_control_app/controllers/pdHourControlController.dart';
import 'package:pd_hour_control_app/widgets/alertBtn.dart';
import 'package:pd_hour_control_app/widgets/criarUsuarioModal.dart';
import 'package:pd_hour_control_app/widgets/customButton.dart';

class UserTab extends StatefulWidget {
  const UserTab({super.key});

  @override
  State<StatefulWidget> createState() => UserTabState();
}

class UserTabState extends State<UserTab>{
  final PdHourControlController _controller = PdHourControlController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [Text('Nome'), Text('Horas'), Text('SquadId')]),
              ..._controller.getEmployees().map(
                (user) {
                  return TableRow(
                      children: [
                        Text(user.name),
                        Text(user.estimatedHours.toString()),
                        Text(user.squadId.toString())
                      ]
                  );
                }
              ),
            ]
        ),
        Center(
            child: AlertBtn(
                text: 'Criar Usuário',
                content: CriarUsuarioModal()
            )
        )
      ],
    );
  }
}
