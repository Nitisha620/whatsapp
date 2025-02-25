import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              const Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.white,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              )
            ],
            backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
            elevation: 0.7,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Text(
                    "STATUS ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  icon: Text(
                    "CALLS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ]),
      ),
    );
  }
}
