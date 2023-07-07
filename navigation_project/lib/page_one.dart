import 'package:flutter/material.dart';
import 'package:navigation_project/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Placeholder(
            color: AppColors.primaryColor,
          ),
          Text(
            'Page 1',
            style: TextStyles.h1,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NaviagtorManager().navigateToWidget(context, const PageTwo());
        },
        child: const Icon(Icons.chevron_right),
      ),
    );
  }
}

class AppColors {
  static Color primaryColor = Colors.blue;
  static Color secondaryColor = Colors.red;
}

class TextStyles {
  static TextStyle h1 = const TextStyle(fontSize: 32);
}

class NaviagtorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const PageTwo();
    }));
  }
}
