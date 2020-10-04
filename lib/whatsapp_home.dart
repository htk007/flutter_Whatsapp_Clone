import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/page_call.dart';
import 'package:whatsapp_clone/pages/page_camera.dart';
import 'package:whatsapp_clone/pages/page_chat.dart';
import 'package:whatsapp_clone/pages/page_status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Whatsapp"),
        elevation: 0.7,
        bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_enhance),),
              new Tab(text: "STATUS"),
              new Tab(text: "CALLS"),
              new Tab(text: "CHATS"),
            ],),
      actions: <Widget>[
        Icon(Icons.search),
        Icon(Icons.more_vert)
      ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          PageCamera(),
          PageStatus(),
          PageCall(),
          PageChat(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: ()=>print("open chat!"),
      ),
    );
  }
}
