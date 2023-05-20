import 'package:flutter/material.dart';
import 'package:l_1/main.dart';

class App extends StatelessWidget {
  const App({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.messenger_outline,
                color: AppColors().light,
              ))
        ],
      ),
      body: Container(
        // height: 400,
        color: AppColors().light,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          height: 550,
          width: 400,
          color: AppColors().light,
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/img/book.png'),
                height: 200,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting."),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Buy for 20 AZN',
                  style: TextStyle(color: AppColors().light),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors().primary)),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Sample',
                    style: TextStyle(color: AppColors().primary)),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                padding: const EdgeInsets.only(left: 60, right: 60),
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: AppColors().light,
                )),
            IconButton(
                padding: const EdgeInsets.only(left: 10, right: 10),
                onPressed: () {},
                icon: Icon(
                  Icons.post_add_outlined,
                  color: AppColors().light,
                )),
            IconButton(
                padding: const EdgeInsets.only(left: 60, right: 50),
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: AppColors().light,
                )),
          ],
        ),
      ),
    );
  }
}
