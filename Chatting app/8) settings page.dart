import 'package:flutter/material.dart';
import 'package:flutter_app1/FinalPj/settt.dart';
class Sett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Click here to go to menu      ', style: TextStyle(fontSize: 21, color:Color.fromRGBO(137, 207, 240, 12),),),
              MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext con){return Set2();}));},
                color: Color.fromRGBO(137, 207, 240, 12),

                child: Icon(Icons.arrow_forward),)
            ],),
          //SizedBox(height: 40,),
        ],
      ),

    );
  }
}