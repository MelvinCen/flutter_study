import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFieldDemoPageState();
  }
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  //输入框初始值对象
  var _userName = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化输入框初始值对象
    this._userName.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: this._userName, //设置输入框初始值对象
              decoration: InputDecoration(hintText: '请输入用户名'),
//              onChanged: (value){
//                this._userName.text = value;
//              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  print(this._userName.text);
                },
                child: Text('登录'),
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

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 20.0),
          TextField(
            decoration:
                InputDecoration(hintText: '请输入', border: OutlineInputBorder()),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
                hintText: '多行文本框', border: OutlineInputBorder()),
            maxLines: 4,
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
                hintText: '密码文本框', border: OutlineInputBorder()),
            obscureText: true, //密文
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), labelText: '用户名'),
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration:
                InputDecoration(icon: Icon(Icons.people), hintText: '请输入用户名'),
          ),
        ],
      ),
    );
  }
}
