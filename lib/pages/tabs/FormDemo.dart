import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FormDemoPageState();
  }
}

class _FormDemoPageState extends State<FormDemoPage> {
  String userName;
  int sex = 1;
  String info='';
  List hobby = [
    {'checked': true, 'title': '睡觉'},
    {'checked': false, 'title': '写代码'},
    {'checked': false, 'title': '吃饭'}
  ];

  //遍历形成组件
  List<Widget> getHobby() {
    List<Widget> temp = [];
    for (var i = 0; i < hobby.length; i++) {
      temp.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title'] + ':'),
          Checkbox(
              value: this.hobby[i]['checked'],
              onChanged: (v) {
                setState(() {
                  this.hobby[i]['checked'] = v;
                });
              })
        ],
      ));
    }
    return temp;
  }

  void _sexChange(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('信息登录表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '请输入用户信息'),
              onChanged: (v) {
                this.userName = v;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                    value: 1, groupValue: this.sex, onChanged: this._sexChange),
                SizedBox(
                  width: 20.0,
                ),
                Text('女'),
                Radio(
                    value: 2, groupValue: this.sex, onChanged: this._sexChange)
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(children: this.getHobby()),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(hintText: '描述信息',border: OutlineInputBorder()),
              onChanged: (v) {
                this.info = v;
              },
            ),
            //按钮
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              height: 40.0,
              child: RaisedButton(
                onPressed: () {
                  print(this.userName);
                  print(this.sex);
                  print(this.hobby);
                  print(this.info);
                },
                child: Text('提交信息'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
