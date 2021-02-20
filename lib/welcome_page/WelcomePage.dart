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

  void _onPressLastPage() {
    UiNotification("Close_Welcome_Page", 0).dispatch(context);
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