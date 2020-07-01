import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  final arguments;
  FormPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      },child: Text('返回'),),
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Text('传递的是：${arguments != null ? arguments['title'] : '无'}'),
    );
  }
}
