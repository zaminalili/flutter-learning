import 'package:flutter/material.dart';

class ColorsApp extends StatefulWidget {
  const ColorsApp({super.key, required this.initalColor});

  final Color? initalColor;

  @override
  State<StatefulWidget> createState() => _ColorsAppState();
}

class _ColorsAppState extends State<ColorsApp> {
  Color bgColor = Colors.white;

  @override
  void initState() {
    super.initState();

    if (widget.initalColor != null) {
      bgColor = widget.initalColor!;
    }
  }

  @override
  void didUpdateWidget(covariant ColorsApp oldWidget) {
    super.didUpdateWidget(oldWidget);

    print(oldWidget.initalColor);
    print(widget.initalColor);

    if (widget.initalColor != bgColor && widget.initalColor != null) {
      changeColor(widget.initalColor!);
    }
  }

  void changeColor(Color color) {
    setState(() {
      bgColor = color;
    });
  }

  void colorOnTap(int value) => {
        if (value == AppColors.blue.index)
          {changeColor(Colors.blue)}
        else if (value == AppColors.red.index)
          {changeColor(Colors.red)}
        else if (value == AppColors.green.index)
          {changeColor(Colors.green)}
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomNavigationBar(onTap: colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              color: Colors.blue,
            ),
            label: 'Blue'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              color: Colors.green,
            ),
            label: 'Green')
      ]),
    );
  }
}

enum AppColors { blue, red, green }
