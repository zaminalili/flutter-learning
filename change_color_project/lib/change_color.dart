import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key, required this.initialColor});

  final Color initialColor;

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  late Color color;

  @override
  void initState() {
    color = widget.initialColor;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChangeColor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor == widget.initialColor) {
      resetColor(widget.initialColor);
    }
  }

  void changeBlue() {
    setState(() {
      color = Colors.blue;
    });
  }

  void changeRed() {
    setState(() {
      color = Colors.red;
    });
  }

  void changeGreen() {
    setState(() {
      color = Colors.green;
    });
  }

  void resetColor(Color newColor) {
    setState(() {
      color = newColor;
    });
    print('reste');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: Container(
        color: color,
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: changeBlue,
            child: const Text('Blue'),
          ),
          FloatingActionButton(
            onPressed: changeRed,
            child: const Text('Red'),
          ),
          FloatingActionButton(
            onPressed: changeGreen,
            child: const Text('Green'),
          )
        ],
      ),
    );
  }
}
