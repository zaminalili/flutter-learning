import 'package:flutter/material.dart';
import 'package:navigation_project/page_one.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Placeholder(
            color: AppColors.secondaryColor,
          ),
          Text(
            'Page 2',
            style: TextStyles.h1,
          )
        ],
      ),
    );
  }
}
