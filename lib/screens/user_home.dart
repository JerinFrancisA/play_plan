import 'package:flutter/material.dart';
import 'package:play_plan/custom_widgets/alert_dialog_button.dart';

class UserHome extends StatefulWidget {
  UserHome({this.userName, this.userPhoneNumber});

  String userName;
  String userPhoneNumber;

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  @override
  Widget build(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Welcome ${widget.userName}'),
          contentPadding: EdgeInsets.all(16.0),
          actions: <Widget>[
            AlertDialogButton(
              text: 'DISMISS',
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Plan Now'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(),
      ),
    );
  }
}
