import 'package:change_color_project/ColorsApp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              setState(() {
                backgroundColor = const Color.fromARGB(255, 92, 20, 20);
              });
            },
            icon: Icon(Icons.clear))
      ]),
      body: ColorsApp(initalColor: backgroundColor),
    );
  }
}
