import 'package:flutter/material.dart';

import 'Category.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabsState(this.index);
  }
}

class _TabsState extends State<Tabs> {
  int currentIndex;
  List<Widget> pages = [HomePage(), CategoryPage(), SettingPages()];

  _TabsState(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              this.currentIndex = 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: this.currentIndex == 1 ? Colors.red: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this.pages[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
          iconSize: 36.0,
          fixedColor: Colors.red,
          onTap: (index) {
            setState(() {
              this.currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
          ]),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Melvin'),
                    accountEmail: Text('melvin@111.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593411229575&di=789d3e504c3561cb6f97552c66d15425&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F12%2F33%2F79%2F42g58PIC8BV.jpg'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=42400199,110335014&fm=15&gp=0.jpg'),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的控件'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(child: Text('右侧边栏')),
    );
  }
}
