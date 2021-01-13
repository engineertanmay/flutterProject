import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SwitchDaytime extends StatefulWidget {
  SwitchDaytime({Key key}) : super(key: key);

  @override
  _SwitchDaytimeState createState() => _SwitchDaytimeState();
}

class _SwitchDaytimeState extends State<SwitchDaytime> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value = !value;
        });
      }),
      body: Container(
        child: FlareActor(
          "assets/switch_daytime.flr",
          alignment: Alignment.center,
          //  fit:BoxFit.fill,
          animation: value == true ? "switch_day" : "switch_night",
        ),
      ),
    );
  }
}
