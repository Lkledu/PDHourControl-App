import 'package:flutter/material.dart';
import 'package:pd_hour_control_app/widgets/customTabController.dart';
import 'package:pd_hour_control_app/widgets/header.dart';

void main() async {
  runApp(
    const MainPage(),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Header(),
            CustomTabController()
          ],
        ),
      ),
    );
  }
}
