import 'package:flutter/material.dart';
import 'package:listveiw_builder/homepage.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<StatefulWidget> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await NavigatorManager.navigateToWidgetN<bool>(
              context, const HomePage());

          if (response == true) {}
        },
        child: const Icon(Icons.games_outlined),
      ),
    );
  }
}

class NavigatorManager {
  static void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }

  static Future<T?> navigateToWidgetN<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}
