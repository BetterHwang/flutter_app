import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage();

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Container(
        child: Center(
          child: Column(
            // center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(
            Icons.favorite,
            size: 160.0,
            color: Colors.white,
            ),
            Text(
            "First Tab",
            style: TextStyle(color: Colors.white),
            )
            ]
          ),
        ),
      ),
    );
  }

}