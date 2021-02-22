import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 10, right: 10,)
          ,child: TabBar(
            tabs: _tabs,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.only(left: 10, right: 10),
            controller: tabController,
          ),
        ),
        leadingWidth: 200,
        actions: [
          IconButton(
            icon: Icon(Icons.filter),
            onPressed: _onPressToSift,
          )
        ],
      ),
      body: TabBarView(
        children: _tabViews,
        controller: tabController,
      ),
    );
  }

  final List<Widget> _tabs = [
    Tab(
      child: Text("XXX",style: TextStyle(color: Colors.white),),
    ),
    Tab(
      child: Text("YYY"),
    )
  ];
  final List<Widget> _tabViews = [
    Text("XX"),
    Text("YY"),
  ];

  Future<void> _onPressToSift() async {
    return showModalBottomSheet(context: context, builder: (BuildContext context) {
      return BottomSheet(
        onClosing: (){},
        builder: (BuildContext context) {
          return Text("Sheet");
        }
      );
    });
  }
}