import 'package:flutter/material.dart';
import 'package:navigation_project/home_page.dart';
import 'package:navigation_project/message_page.dart';
// import 'package:navigation_project/page_one.dart';
import 'package:navigation_project/profile_page.dart';
import 'package:navigation_project/search_page.dart';
import 'main.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key, required this.title});
  final String title;

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabViews.values.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              widget.title,
              style: TextStyle(color: AppColors.secondaryColor),
            ),
          ),
          body: const TabBarView(
              children: [Home(), Search(), Message(), Profile()]),
          bottomNavigationBar: const BottomAppBar(
              child: TabBar(
            tabs: [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.message),
              Icon(Icons.person)
            ],
          )),
        ));
  }
}

enum _tabViews { home, search, message, profile }
