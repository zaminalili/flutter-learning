import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transfer'),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          actions: [Icon(Icons.menu)],
        ),
        body: PageView(
          children: const [TransferPage()],
        ));
  }
}

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BankCard(),
        ListTile(
            title: Text('Statistics'),
            subtitle: Text('All card transactions'),
            leading: ElevatedBtn(
              onPressed: () {},
              icon: Icons.grid_view_outlined,
            ),
            trailing: Icon(Icons.chevron_right_rounded))
      ],
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Card(
          color: Color.fromARGB(255, 130, 122, 101),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  BigTitle(
                    text: 'Kapital Bank',
                    color: AppColors().light,
                  )
                ],
              ))),
    );
  }
}

class BigTitle extends StatelessWidget {
  const BigTitle({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 28),
    );
  }
}

class AppColors {
  final Color black = Colors.black;
  final Color light = const Color.fromARGB(255, 184, 231, 253);
  final Color blue = Colors.blue;
}

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.backroundColor = Colors.blue,
      this.iconColor = Colors.white,
      this.borderRadius = 10.0});

  final IconData icon;
  final VoidCallback onPressed;
  final Color backroundColor;
  final Color iconColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backroundColor),
          iconColor: MaterialStatePropertyAll(iconColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          )),
      child: Icon(icon),
    );
  }
}
