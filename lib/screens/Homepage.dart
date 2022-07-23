import 'package:flutter/material.dart';
import 'calls.dart';
import 'camera.dart';
import 'chats.dart';
import 'status.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [Camera(), Chats(), Status(), Calls()]),
    );
  }
}
