import 'package:change_color_project/change_color.dart';
import 'package:flutter/material.dart';

class ColorLifecycle extends StatefulWidget {
  const ColorLifecycle({super.key});

  @override
  State<ColorLifecycle> createState() => _ColorLifecycleState();
}

class _ColorLifecycleState extends State<ColorLifecycle> {
  Color bgColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  bgColor = Colors.black;
                });
              },
              icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(child: ChangeColor(initialColor: bgColor))
        ],
      ),
    );
  }
}
