import 'package:flutter/material.dart';
import 'package:service_project/postmodel.dart';
import 'package:service_project/service.dart';

class PostData extends StatefulWidget {
  const PostData({super.key});

  @override
  State<PostData> createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {
  late final IMyservice service;
  bool _isLoading = false;

  final TextEditingController _textController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _useridController = TextEditingController();

  @override
  void initState() {
    super.initState();

    service = MyService();
  }

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> postData(PostModel model) async {
    changeLoading();

    service.postData(model);

    changeLoading();
  }

  bool get _isValid {
    return _textController.text.isNotEmpty &&
        _bodyController.text.isNotEmpty &&
        _useridController.text.isNotEmpty;
  }

  void _sendData() {
    if (_isValid) {
      final model = PostModel(
          title: _textController.text,
          body: _bodyController.text,
          userId: int.tryParse(_useridController.text));

      postData(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Service demo'),
        ),
        body: _isLoading
            ? Container(child: const CircularProgressIndicator())
            : Column(
                children: [
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(label: Text('title')),
                  ),
                  TextField(
                    controller: _bodyController,
                    decoration: const InputDecoration(label: Text('body')),
                  ),
                  TextField(
                    controller: _useridController,
                    decoration: const InputDecoration(label: Text('user id')),
                    keyboardType: TextInputType.number,
                  ),
                  TextButton(
                      onPressed: _isLoading ? null : _sendData,
                      child: const Text('send'))
                ],
              ));
  }
}
