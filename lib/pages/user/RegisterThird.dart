import 'package:flutter/material.dart';

import '../tabs/Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Text('点击完成注册'),
            RaisedButton(
              onPressed: () {
//              Navigator.pop(context);
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Tabs(index: 2,)),
                    (route) => route == null);
              },
              child: Text('确定'),
            )
          ],
        ),
      ),
    );
  }
}
