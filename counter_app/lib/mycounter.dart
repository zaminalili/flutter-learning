import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<StatefulWidget> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton(onPressed: increment, child: const Icon(Icons.add)),
          ElevatedButton(onPressed: decrement, child: const Icon(Icons.remove)),
          ElevatedButton(
              onPressed: reset, child: const Icon(Icons.restart_alt_sharp))
        ],
      ),
    );
  }
}
