import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/screens/home/home.dart';
import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taskko APP',
      // ignore: prefer_const_constructors
      home: Homepage(),
    );
  }
}
