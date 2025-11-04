import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabController extends StatefulWidget {
  const CustomTabController({super.key});

  @override
  State<StatefulWidget> createState() => _CustomTabControllerState();
}

class _CustomTabControllerState extends State<CustomTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Text('Squads'),
              Text('Usuários'),
            ],
          ),
          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                Container(color: Colors.blueAccent),
                Container(color: Colors.orangeAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }

}