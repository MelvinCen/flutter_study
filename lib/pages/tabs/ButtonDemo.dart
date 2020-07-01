import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('floatingActionButton');
        },
        child: Icon(Icons.add,color: Colors.black,size: 40.0,),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print('普通按钮');
                },
                child: Text('普通按钮'),
              ),
              SizedBox(
                width: 5.0,
              ),
              RaisedButton(
                onPressed: () {
                  print('有颜色按钮');
                },
                child: Text('有颜色按钮'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(
                width: 5.0,
              ),
              RaisedButton(
                onPressed: () {
                  print('有阴影按钮');
                },
                child: Text('有阴影按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
              ),
              SizedBox(
                width: 5.0,
              ),
              RaisedButton.icon(
                  onPressed: () {
                    print('图标按钮');
                  },
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {
                      print('宽高');
                    },
                    child: Text('宽高'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10.0,
                  ))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: RaisedButton(
                  onPressed: () {
                    print('自适应按钮');
                  },
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10.0,
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: RaisedButton(
                  onPressed: () {
                    print('圆角按钮');
                  },
                  child: Text('圆角按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    print('圆形按钮');
                  },
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 10.0,
                  shape: CircleBorder(side: BorderSide(color: Colors.white))),
              FlatButton(
                  onPressed: () {
                    print('FlatButton按钮');
                  },
                  child: Text('FlatButton按钮')),
              OutlineButton(
                onPressed: () {
                  print('OutlineButton按钮');
                },
                child: Text('OutlineButton按钮'),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      onPressed: () {
                        print('登录');
                      },
                      child: Text('登录'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  RaisedButton(
                      onPressed: () {
                        print('注册');
                      },
                      child: Text('注册'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
