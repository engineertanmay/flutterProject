import 'package:flutter/material.dart';
import 'package:response/response.dart';

class MyHomePage extends StatelessWidget {
  final respose = ResponseUI.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: respose.setHeight(200),
                  width: respose.setWidth(500),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis, mi eget viverra vehicula, augue felis gravida velit, nec vulputate elit justo molestie ex. Vestibulum a iaculis ligula. ",
                    style: TextStyle(
                        fontSize: respose.setFontSize(20), color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: respose.setHeight(10),
                ),
                Container(
                  child: Image.asset("assets/profile.jpg"),
                ),
                SizedBox(
                  height: respose.setHeight(10),
                ),
                Container(
                  width: 200.0,
                  height: 70.0,
                  child: FlatButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: new Text(
                      'Click me',
                      style: TextStyle(fontSize: respose.setFontSize(25)),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ), // child:Text("hello"),
          ),
        ),
      ),
    );
  }
}
