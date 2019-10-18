import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/inputbox.dart';
import 'package:play_plan/custom_widgets/button.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class OtherPlan extends StatefulWidget {
  OtherPlan({Key key}) : super(key: key);

  @override
  _OtherPlanState createState() => _OtherPlanState();
}

class _OtherPlanState extends State<OtherPlan> {
  String datePicked;
  String timePicked;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InputBox(
              keyboardType: TextInputType.text,
              hintText: 'Specify Plan',
              labelText: 'Plan Name',
            ),
            Button(
              text: 'PICK DATE AND TIME',
              onPressed: () {
                DatePicker.showDateTimePicker(
                  context,
                  showTitleActions: true,
                  currentTime: DateTime.now(),
                  onConfirm: (date) {
                    datePicked = date.toString().split(' ')[0].toString();
                    timePicked = date.toString().split(' ')[1].toString().substring(0, 8);
                    print('date : ' + datePicked);
                    print('time : ' + timePicked);
                  },
                  locale: LocaleType.en,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
