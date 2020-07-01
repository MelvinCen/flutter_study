import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40.0,),
              Text('这是一个登录界面，点击登录会执行登录操作'),
              RaisedButton(onPressed: (){
                Navigator.pop(context);
              },
              child: Text('登录'),)
            ],
          ),
        ));
  }
}
