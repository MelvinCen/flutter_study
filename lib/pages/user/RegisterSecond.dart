import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('第二步-输入验证码'),),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0,),
            Text('请输入验证码'),
            RaisedButton(onPressed: (){
//              Navigator.pushReplacementNamed(context, '/registerThird');
              Navigator.pushNamed(context, '/registerThird');
            },child: Text('下一步'),)
          ],
        ),
      ),
    );
  }

}