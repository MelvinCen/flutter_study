import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DialogPageState();
  }
}

class _DialogPageState extends State<DialogPage> {
  //普通dialog
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗？'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context, 'Cancel');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定'))
            ],
          );
        });

    print(result);
  }

  //选择弹框
  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('OptionA'),
                onPressed: () {
                  print('OptionA');
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('OptionB'),
                onPressed: () {
                  print('OptionB');
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('OptionC'),
                onPressed: () {
                  print('OptionC');
                  Navigator.pop(context, 'C');
                },
              )
            ],
          );
        });
    print(result);
  }
  //底部sheet对话框
  _modalBottomSheet() async{
  var result = await  showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 220.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享 A'),
                  onTap: (){
                    print('分享 A');
                    Navigator.pop(context,'分享 A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: (){
                    print('分享 B');
                    Navigator.pop(context,'分享 B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: (){
                    print('分享 C');
                    Navigator.pop(context,'分享 C');
                  },
                ),
              ],
            ),
          );
        });
  print(result);
  }

  _toast(){
    Fluttertoast.showToast(
        msg: "This is Toast Test",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog演示界面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: this._alertDialog,
            child: Text('alert弹出框-AlertDialog'),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: this._simpleDialog,
            child: Text('select弹出框-SimpleDialog'),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: this._modalBottomSheet,
            child: Text('ActionSheet底部弹出框-ShowModalBottomSheet'),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: this._toast,
            child: Text('toast-fluttertoast第三方库'),
          ),
        ],
      ),
    );
  }
}
