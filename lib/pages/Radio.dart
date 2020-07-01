import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioDemoPageState();
  }
}

class _RadioDemoPageState extends State<RadioDemoPage> {

  var sex = 1;
  var flag = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('单选演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('男'),
                Radio(value: 1, groupValue: this.sex, onChanged: (v){
                  setState(() {
                    this.sex = v;
                  });
                }),
                SizedBox(width: 20.0),
                Text('女'),
                Radio(value: 2, groupValue: this.sex, onChanged: (v){
                  setState(() {
                    this.sex = v;
                  });
                })
              ],
            ),
            Row(
              children: <Widget>[
                Text('${this.sex}'),
                Text(this.sex == 1 ? '男' : '女')
              ],
            ),
            SizedBox(height: 20.0,),
            Switch(value: this.flag, onChanged: (v){
              setState(() {
                this.flag = v;
                print(v);
              });
            })
          ],
        ),
      ),
    );
  }
}
