import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:service_project/postmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio;
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  @override
  void initState() {
    super.initState();

    _dio = Dio(BaseOptions(baseUrl: _baseUrl));

    fecthPostItems();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fecthPostItems() async {
    changeLoading();

    final response = await _dio.get('/posts');

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;

      if (datas is List) {
        setState(() {
          _items = datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

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
