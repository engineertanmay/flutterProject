import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class OtpVarification extends StatefulWidget {
  @override
  _OtpVarificationState createState() => _OtpVarificationState();
}

class _OtpVarificationState extends State<OtpVarification> {
  @override
  Widget build(BuildContext context) {
    bool value = true;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value = !value;
        });
      }),
      body: Container(
        child: FlareActor(
          "assets/otp-verification.flr",
          alignment: Alignment.center,
          animation: value == false?"verify-otp":"",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
