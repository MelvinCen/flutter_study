import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: TabBar(
                        indicatorColor: Colors.blue,
                        labelColor: Colors.blue,
                        labelStyle: TextStyle(fontSize: 20.0),
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: <Widget>[
                      Tab(
                        text: '热销',
                      ),
                      Tab(
                        text: '推荐',
                      ),
                    ]))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
