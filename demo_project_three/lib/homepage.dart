import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(),
      bottomNavigationBar: BottomAppBar(
        height: 81,
        child: Row(
          children: [
            PrimaryButton(
                icon: Icons.home_filled,
                text: 'Home',
                color: AppColors.primaryColor),
            PrimaryButton(
                icon: Icons.calendar_month,
                text: 'Consult',
                color: AppColors.primaryColor),
            PrimaryButton(
                icon: Icons.add, text: 'Status', color: AppColors.primaryColor),
            PrimaryButton(
              icon: Icons.medical_services_outlined,
              text: 'Medicine',
              color: AppColors.primaryColor,
            ),
            PrimaryButton(
                icon: Icons.article_outlined,
                text: 'Article',
                color: AppColors.primaryColor)
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key, required this.icon, required this.text, required this.color});

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12, color: color),
            )
          ],
        ));
  }
}

class AppColors {
  static Color primaryColor = const Color.fromARGB(255, 53, 156, 224);

  static Color secondaryColor = const Color.fromARGB(255, 238, 238, 238);

  static Color darkTextColor = Colors.black;
}
