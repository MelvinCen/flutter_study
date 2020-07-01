import 'dart:async';
import 'package:flutter/material.dart';

class MyDialog extends Dialog {

  String title;
  String content;
  MyDialog(this.title,{this.content=""});

  _showTimer(context){
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t){
      print('取消dialog');
      Navigator.pop(context);
      t.cancel();//取消定时器
    });
  }
  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text('${this.title}'),
                      alignment: Alignment.center,
                    ),
                    Align(
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                child: Text('${this.content}',textAlign: TextAlign.left,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
