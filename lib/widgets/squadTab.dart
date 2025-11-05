import 'package:flutter/material.dart';
import 'package:pd_hour_control_app/controllers/pdHourControlController.dart';
import 'package:pd_hour_control_app/widgets/alertBtn.dart';
import 'package:pd_hour_control_app/widgets/criarSquadModal.dart';

class SquadTab extends StatefulWidget {
  const SquadTab({super.key});

  @override
  State<StatefulWidget> createState() => SquadTabState();
}

class SquadTabState extends State<SquadTab>{
  final PdHourControlController _controller = PdHourControlController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [Text('Id'), Text('Nome')]),
            ..._controller.getSquads().map(
                (squad) {
                  return TableRow(
                    children: [
                      Text(squad.id.toString()),
                      Text(squad.name)
                    ]
                  );
                }
            ),
          ]
        ),
        Center(
          child: AlertBtn(
            text: 'Criar Squad',
            content: CriarSquadModal()
          )
        )
      ]
    );
  }
}
