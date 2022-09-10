import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
class ApiApp extends StatefulWidget {
  @override
  _ApiAppState createState() => _ApiAppState();
}

class _ApiAppState extends State<ApiApp> {
  List data=[];
  @override
  void initState() {

    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      (data.length==0)?Center(child: CircularProgressIndicator())
          :ListView(
        children: [
          for(int i=0;i<data.length;i++)
            Card(
                color: Colors.yellow,
                child:
                ListTile(
                  leading: CircleAvatar(
                    child: Text(data[i]['id'].toString()),
                  ),
                  title: Text(data[i]['title']),
                  subtitle: Text(data[i]['body'].toString().substring(0,15)+" ..."),
                )
            )
        ],
      ),
      appBar: AppBar(),
    );
  }

  void getData()async
  {
    final re=
    await http.get(
        Uri.parse(
            'https://jsonplaceholder.typicode.com/posts'
        ));
    setState(() {
      data=jsonDecode(re.body);
      print(data);
    });
  }
}