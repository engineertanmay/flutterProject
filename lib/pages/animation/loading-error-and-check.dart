import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LoadingCheck extends StatefulWidget {

  @override
  _LoadingCheckState createState() => _LoadingCheckState();
}

class _LoadingCheckState extends State<LoadingCheck> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.pending_actions),
        onPressed: (){
          setState(() {
            value = !value;
          });
        }
        ),
          body: Container(
        child: FlareActor(
          "assets/loading-error-and-check.flr",
          
          alignment: Alignment.center,
          animation: value ==false?"loading":"success",
        ),
      ),
    );
  }
}