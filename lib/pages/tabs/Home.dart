import 'package:flutter/material.dart';
import '../components/MyDialog.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/textFieldDemoPage');
          },
          child: Text("跳转到表单页面"),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/checkBox');
          },
          child: Text('跳转到checkBox展示页'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/radio');
          },
          child: Text('跳转到RadioDemoPage'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/formDemo');
          },
          child: Text('跳转到信息登记表'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/datePicker');
          },
          child: Text('跳转到DatePickerDemo'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/datePickerPub');
          },
          child: Text('跳转到DatePickerPubPage'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/swiperDemo');
          },
          child: Text('跳转到swiperDemo'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/dialogDemo');
          },
          child: Text('跳转到dialogDemo'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          onPressed: () {
            showDialog(context: context,builder: (context){
              return MyDialog('标题',content: '内容',);
            });
          },
          child: Text('弹出到自定义dialog'),
        ),
      ],
    );
  }
}
