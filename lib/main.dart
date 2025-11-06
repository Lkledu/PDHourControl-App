import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pd_hour_control_app/widgets/customTabController.dart';
import 'package:pd_hour_control_app/widgets/header.dart';

import 'config/environmentConfig.dart';

void main() async {

  await dotenv.load(fileName: EnvironmentConfig.fileName);

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
