import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 2;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 9223372036854775807 + 9223372036854775807;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter App',
            style: TextStyle(color: AppColors().secondary)),
        backgroundColor: AppColors().primary,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              increment();
            },
            backgroundColor: AppColors().primary,
            child: Icon(
              Icons.add,
              color: AppColors().secondary,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              decrement();
            },
            backgroundColor: AppColors().primary,
            child: Icon(
              Icons.remove,
              color: AppColors().secondary,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              reset();
            },
            backgroundColor: AppColors().primary,
            child: Text(
              'Reset',
              style: TextStyle(color: AppColors().secondary),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(fontSize: 40, color: AppColors().primary),
        ),
      ),
    );
  }
}

class AppColors {
  final Color primary = const Color.fromARGB(255, 132, 31, 24);
  final Color secondary = Colors.white;
}
