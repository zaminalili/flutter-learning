import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageSate();
}

class HomePageSate extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              buildCounter: (context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return Container(
                  width: 300,
                  height: 5,
                  color: Color.fromARGB(
                      255, 201, 153 * currentLength!, 1 * currentLength),
                );
              },
              
            ),
          ]),
        ));
  }
}
