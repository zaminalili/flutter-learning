import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Placeholder(
            color: Colors.amber,
          ),
          Text('Search Page')
        ],
      ),
    );
  }
}
