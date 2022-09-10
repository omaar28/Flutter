import 'package:flutter/material.dart';
import 'login_page.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("W e l c o m e", style: TextStyle(color: Color.fromRGBO(137, 207, 240, 12), fontSize: 30,
                    fontWeight: FontWeight.bold ),)],),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Click here to continue      ', style: TextStyle(fontSize: 21, color:Color.fromRGBO(137, 207, 240, 12),),),
              MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext con){return LogPage();}));},
                color: Color.fromRGBO(137, 207, 240, 12),

                child: Icon(Icons.arrow_forward),)
            ],
          ),
        ],
      ),

    );
  }
}
