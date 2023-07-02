import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: TextStyles.titleStyle,
          ),
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.heart_broken_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: Padding(
          padding: Paddings.horizontalPadding,
          child: Column(
            children: [
              Column(
                children: [
                  Text('Furniture',
                      style: TextStyles.descriptionStyle,
                      textAlign: TextAlign.start),
                  Text(
                    'Brown Classic Furniture',
                    style: TextStyles.titleStyle,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
              Image.asset('images/sofanobg.png'),
              Text(
                'Lorem impsum' * 10,
                style: TextStyles.descriptionStyle,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}

class TextStyles {
  static TextStyle titleStyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1);

  static TextStyle descriptionStyle =
      TextStyle(color: AppColors.light, letterSpacing: 2);
}

class Paddings {
  static EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20.0);
  static EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 20.0);
}

class AppColors {
  static Color light = const Color.fromARGB(255, 179, 178, 178);
}
