import 'package:flutter/material.dart';
import 'package:flutter_app1/FinalPj/register_page.dart';

import 'aftrlog.dart';
import 'chat_page.dart';
class LogPage extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LogPage> {
  bool x = true;
  var e = TextEditingController();
  var p = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Color.fromRGBO(137, 207, 240, 12),
              child: TextFormField(

                controller: e,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),

                  ),
                  labelText: 'email',
                  hintText: 'enter ur mail',
                  prefixIcon: Icon(Icons.attach_email),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Color.fromRGBO(137, 207, 240, 12),

              child: TextFormField(
                controller: p,
                onChanged: (c){ print(c); },
                obscureText: x,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0)),
                  labelText: 'pass',
                  hintText: 'enter ur pass',
                  suffixIcon: InkWell(onTap: (){setState(() {x = (!x);});},  child: Icon(Icons.remove_red_eye),),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
          ),
          MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext con){return AFftrLog();}));},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            color: Colors.black87,
            minWidth: 150,
            child: Text('login', style: TextStyle(fontSize: 21, color:Color.fromRGBO(137, 207, 240, 12),),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('to register   -->  ', style: TextStyle(fontSize: 15, color: Color.fromRGBO(137, 207, 240, 12),),),
              InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext con){return RegPAge();}));},
                  child: Text("click here", style: TextStyle(fontSize: 15, color: Color.fromRGBO(137, 207, 240, 12),),))],
          )

        ],
      ),
      appBar: AppBar(centerTitle: true, backgroundColor: Color.fromRGBO(137, 207, 240, 12), title: Text("Login Page", style: TextStyle(color: Colors.black87),),),
    );
  }
}
