import 'dart:io';
import 'package:dio/dio.dart';
import 'package:service_project/postmodel.dart';

abstract class IMyservice {
  Future<List<PostModel>?> getDatas();
  Future<bool?> postData(PostModel model);
  Future<bool?> putData(PostModel model, int id);
  Future<bool?> deleteData(int id);
}

class MyService implements IMyservice {
  final Dio _dio;
  MyService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  // Service methods

  @override
  Future<List<PostModel>?> getDatas() async {
    try {
      final response = await _dio.get('posts');

      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;

        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> postData(PostModel model) async {
    try {
      final response = await _dio.post('posts', data: model);

      return response == HttpStatus.created;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> putData(PostModel model, int id) async {
    try {
      final response = await _dio.put('posts/$id', data: model);

      return response == HttpStatus.ok;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool?> deleteData(int id) async {
    try {
      final response = await _dio.delete('posts/$id');

      return response == HttpStatus.ok;
    } catch (e) {
      return null;
    }
  }
}
