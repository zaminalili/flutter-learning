import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Placeholder(
            color: Colors.green,
          ),
          Text('Message Page')
        ],
      ),
    );
  }
}
