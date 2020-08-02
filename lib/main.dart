import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionColor: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: SelectableText(
            //double tab or long press on text to enable text selection
            'hello this is abu bakar nawaz ghumman. welcome here. ok good bye now good good',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.0,
            ),
            showCursor: true,
            cursorColor: Colors.green,
            cursorWidth: 2.0,
            toolbarOptions:
                ToolbarOptions(cut: true, copy: true, selectAll: true),
          ),
        ),
      ),
    );
  }
}
