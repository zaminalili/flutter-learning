import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleText(text: title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: AppIcon(icon: Icons.person_outline))
        ],
        leading: AppIcon(icon: Icons.arrow_back_ios_sharp),
      ),
      body: Padding(
        padding: AppPaddings().horizontolPadding,
        child: Column(children: [
          const TitleText(text: 'Good Morning'),
          const DescriptionText(text: 'Hi, Dianne Amerler'),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: AppPaddings().allPadding,
            color: AppColors().secondary,
            child: const Row(children: [
              Column(
                children: [
                  DescriptionText(text: 'Savings'),
                  SubTitleText(text: '50,000')
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  DescriptionText(text: 'Saved'),
                  SubTitleText(text: '4,450')
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  DescriptionText(text: 'Spend'),
                  SubTitleText(text: '3,832')
                ],
              )
            ]),
          ),
          Row(
            children: [
              Padding(
                padding: AppPaddings().allPadding,
                child: const Column(children: [
                  AppIcon(icon: Icons.wallet),
                  DescriptionText(text: 'Savings')
                ]),
              ),
              Padding(
                padding: AppPaddings().allPadding,
                child: const Column(children: [
                  AppIcon(icon: Icons.energy_savings_leaf_rounded),
                  DescriptionText(text: 'Saved')
                ]),
              ),
              Padding(
                padding: AppPaddings().allPadding,
                child: const Column(children: [
                  AppIcon(icon: Icons.monetization_on),
                  DescriptionText(text: 'Spend')
                ]),
              )
            ],
          )
        ]),
      ),
      backgroundColor: AppColors().primary,
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors().textOnLight),
    );
  }
}

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors().textOnDark),
      textAlign: TextAlign.start,
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: AppColors().textSecondary),
      textAlign: TextAlign.start,
    );
  }
}

class AppColors {
  final Color textOnLight = Colors.black;
  final Color textOnDark = Colors.white;
  final Color textSecondary = const Color.fromARGB(255, 218, 208, 208);
  final Color primary = Colors.white;
  final Color secondary = const Color.fromARGB(255, 53, 2, 107);
}

class AppIcon extends StatelessWidget {
  const AppIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
      style: ButtonStyle(
          iconColor: MaterialStateProperty.all(AppColors().textSecondary)),
    );
  }
}

class AppPaddings {
  final horizontolPadding = const EdgeInsets.symmetric(horizontal: 20);
  final verticalPadding = const EdgeInsets.symmetric(vertical: 20);
  final allPadding = const EdgeInsets.symmetric(horizontal: 28, vertical: 10);
}
