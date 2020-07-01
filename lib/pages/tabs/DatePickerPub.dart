import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DatePickerPubPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DatePickerPubPageState();
  }
}

class _DatePickerPubPageState extends State<DatePickerPubPage> {
  DateTime _dateTime = DateTime.now();

  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.black)),
      ),
      minDateTime: DateTime.parse('1980-05-12'),
      maxDateTime: DateTime.parse('2100-05-12'),
      initialDateTime: this._dateTime,
      dateFormat: 'yy年M月d日    EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
//      onChange: (dateTime, List<int> index) {
//        setState(() {
//          _dateTime = dateTime;
//        });
//      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('日期选择'),
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
                    Text('${formatDate(_dateTime, [yyyy, '年', mm, '月', dd,'日',HH, ':', nn,])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: this._showDatePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}
