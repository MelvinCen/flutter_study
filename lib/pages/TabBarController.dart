import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarControllerPageState();
  }
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  //1,继承SingleTickerProviderStateMixin 2，定义TabController 3，在initState()函数中初始化
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    //初始化
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(controller: this._tabController, tabs: <Widget>[
          Tab(
            text: "热销",
          ),
          Tab(
            text: "推荐",
          ),
        ]),
      ),
      body: TabBarView(controller: this._tabController, children: <Widget>[
        Center(
          child: Text('热销'),
        ),
        Center(
          child: Text('推荐'),
        ),
      ]),
    );
  }
}
