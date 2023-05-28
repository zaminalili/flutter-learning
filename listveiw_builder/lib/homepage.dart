import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomePage> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();

    _items = [
      CollectionModel(
          imagePath: 'assets/png/img1.png', title: 'Product 1', price: 2.5),
      CollectionModel(
          imagePath: 'assets/png/img2.png', title: 'Product 2', price: 2.5),
      CollectionModel(
          imagePath: 'assets/png/img3.png', title: 'Product 3', price: 2.5),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image.asset(_items[index].imagePath),
                  Text(
                    _items[index].title,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text((_items[index].price).toString())
                ],
              ),
            );
          }),
    );
  }
}

class CollectionModel {
  CollectionModel(
      {required this.imagePath, required this.title, required this.price}) {}

  final String imagePath;
  final String title;
  final double price;
}
