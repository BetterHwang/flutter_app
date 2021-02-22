import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/manager/ui_notification.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  PageController pageController;

  void _closeWelcomePage() {
    UiNotification("Close_Welcome_Page", 0).dispatch(context);
  }

  void _onPressLastPage() {
    this._showMyDialog();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
                _closeWelcomePage();
              },
            ),
            TextButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage:3, keepPage: false, viewportFraction:1.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        reverse: false,
        children: <Widget>[
          Scaffold(
            body: Center(
              child: Text("FirstPage"),
            ),
          ),

          Scaffold(
            body: Center(
              child: Text("SecondPage"),

            ),
          ),

          Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text("ThirdPage"),
                  CupertinoButton(
                    child: Text("立即体验"),
                    onPressed: _onPressLastPage,
                  )
                ],
              )
            ),
          ),
        ],
        controller: pageController,
      )
    );
  }

}