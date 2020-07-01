import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';


class DatePickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DatePickerDemoState();
  }
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async {
//  _showDatePicker(){
//    showDatePicker(context: context, initialDate: _nowDate, firstDate: DateTime(1980), lastDate: DateTime(2100)).then((result){
//      print(result);
//    });
//  }

    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100));
    print(result);
    setState(() {
      this._nowDate = result;
    });
  }

  _showTimePicker() async{

   var result = await showTimePicker(context: context, initialTime: _nowTime);

   setState(() {
     this._nowTime = result;
   });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print(this.now);// 2020-06-29 17:23:24.861988
//    print(this.now.millisecondsSinceEpoch);// 1593422793684
//    print(DateTime.fromMillisecondsSinceEpoch(1593422793684));//2020-06-29 17:26:33.684
    //格式化日期  2020-06-29
//    print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePickerDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${formatDate(_nowDate, [yyyy, '-', mm, '-', dd])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: this._showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${this._nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: this._showTimePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
