import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步-输入手机号'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0,),
            Text('这是注册的第一步，请输入您的手机号，然后点击下一步'),
            RaisedButton(onPressed: (){
//              Navigator.pushReplacementNamed(context, '/registerSecond');
              Navigator.pushNamed(context, '/registerSecond');
            },child: Text('下一步'),)
          ],
        ),
      ),
    );
  }
}
