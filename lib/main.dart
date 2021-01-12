import 'package:flutter/material.dart';
import 'package:flutterProject/homepage.dart';
import 'package:flutterProject/styling.dart';
import 'package:response/response.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Response(
      originalScreenHeight: 759,originalScreenWidth: 392,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Screen Scaling',
        theme: AppTheme.lightTheme,
        home: Response(child: MyHomePage()),
      ),
    );
  }
}
