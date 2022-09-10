import 'package:flutter/material.dart';
import 'package:flutter_app1/FinalPj/set.dart';
import 'package:flutter_app1/FinalPj/status.dart';
import 'chat_page.dart';
class AFftrLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              actions: [
                Padding(padding: const EdgeInsets.all(15),
                    child: Icon(Icons.search)

                ),
              ],
              centerTitle: true, backgroundColor: Colors.black,
              title: Text("Our App", style: TextStyle(color: Color.fromRGBO(137, 207, 240, 12), wordSpacing: 3),),
              bottom: TabBar(labelColor: Color.fromRGBO(137, 207, 240, 12), indicatorColor: Color.fromRGBO(137, 207, 240, 12),
                  tabs: [
                    Tab(icon: Icon(Icons.chat), text:"Chat"),
                    Tab(icon: Icon(Icons.history_rounded), text:"Status"),
                    Tab(icon: Icon(Icons.settings), text:"Settings"),]),),
            body: TabBarView(children: [ChatPA(), St(), Sett()],)
        )
    );
  }
}
