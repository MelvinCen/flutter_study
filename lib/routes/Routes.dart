import 'package:flutter/material.dart';
import '../pages/tabs/Form.dart';
import '../pages/tabs/Search.dart';
import '../pages/tabs/Tabs.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/user//User.dart';
import '../pages/tabs/ButtonDemo.dart';
import '../pages/TextField.dart';
import '../pages/Radio.dart';
import '../pages/CheckBox.dart';
import '../pages/tabs/FormDemo.dart';
import '../pages/tabs/DatePicker.dart';
import '../pages/tabs/DatePickerPub.dart';
import '../pages/tabs/Swiper.dart';
import '../pages/Dialog.dart';


//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/search': (context) => SearchPage(),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBarDemoPage': (context) => AppBarDemoPage(),
  '/tabBarControllerPage': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/buttonDemo': (context) => ButtonDemoPage(),
  '/textFieldDemoPage': (context) => TextFieldDemoPage(),
  '/radio': (context) => RadioDemoPage(),
  '/checkBox': (context) => CheckBoxDemoPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/datePicker': (context) => DatePickerDemo(),
  '/datePickerPub': (context) => DatePickerPubPage(),
  '/swiperDemo': (context) => SwiperDemo(),
  '/dialogDemo': (context) => DialogPage(),
};

Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(builder: (context) {
        return pageContentBuilder(context, arguments: settings.arguments);
      });
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) {
        return pageContentBuilder(context);
      });
      return route;
    }
  } else {
    print('无法跳转');
    return null;
  }
};
