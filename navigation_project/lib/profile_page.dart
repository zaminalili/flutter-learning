import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Placeholder(
            color: Colors.red,
          ),
          Text('Profile Page')
        ],
      ),
    );
  }
}
