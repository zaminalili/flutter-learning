import 'package:flutter/material.dart';
import 'package:service_project/postmodel.dart';
import 'package:service_project/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IMyservice service;

  List<PostModel>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    service = MyService();

    fecthPostItems();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fecthPostItems() async {
    changeLoading();

    _items = await service.getDatas();

    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serice demo'),
      ),
      body: _isLoading
          ? Container(child: const CircularProgressIndicator())
          : ListView.builder(
              itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return Text(_items?[index].title ?? '');
              }),
    );
  }
}
