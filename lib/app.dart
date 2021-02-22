import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books Bee2Biz',
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: Text('Bee2Biz'),
          ),
        ),
      ),
    );
  }
}
