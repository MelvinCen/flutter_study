import 'package:flutter/material.dart';

class SettingPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SettingPageState();
  }
}

class _SettingPageState extends State<SettingPages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('我是一个文本'),
        ),
        ListTile(
          title: Text('我是一个文本'),
        ),
        ListTile(
          title: Text('我是一个文本'),
        ),
        ListTile(
          title: Text('我是一个文本'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: Text('跳转到登录界面'),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
          child: Text('跳转到注册界面'),
        ),
      ],
    );
  }
}
