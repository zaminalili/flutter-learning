import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Text 1'), Text('Text 2'), Text('Text 3')],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Text 1'), Text('Text 2'), Text('Text 3')],
            )
          ],
        ));
  }
}
