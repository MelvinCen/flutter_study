import 'package:flutter/material.dart';

class CheckBoxDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxPageState();
  }
}

class _CheckBoxPageState extends State<CheckBoxDemoPage> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('多选演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                    value: this.flag,
                    onChanged: (value) {
                      setState(() {
                        this.flag = value;
                      });
                      print(this.flag);
                    })
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(this.flag ? '选中' : '未选中')],
            ),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('这是二级标题'),
            ),
            Divider(),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('这是二级标题'),
              secondary: Icon(Icons.help),
            ),
          ],
        ),
      ),
    );
  }
}
