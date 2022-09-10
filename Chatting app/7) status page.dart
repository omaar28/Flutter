import 'package:flutter/material.dart';
import 'products.dart';

import 'chat_data.dart';

class St extends StatelessWidget {
  List<Products> myList = [
    Products("omar ayman","assets/image/wa.jpeg"),
    Products("Tarek ahmad","assets/image/icon.jpg"),
    Products("Abderhman Atef","assets/image/eme.jpg"),
    Products("Sara ahmad","assets/image/pl.png"),
    Products("Ismail","assets/image/IRENE.png"),
    Products("Vamp","assets/image/mo.jpeg"),
    Products("Abdullah","assets/image/wa.jpeg"),
    Products("Abdullah","assets/image/pl.png"),
    Products("Abdullah","assets/image/ar.jpg"),
    Products("Abdullah","assets/image/tx.jpg"),
    Products("Abdullah","assets/image/tin.jpg"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
    Products("Abdullah","assets/image/IRENE.png"),
  ];
  int x = 137, y = 207, z = 240;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.white10,

      body:Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              for(int i = 0; i< myList.length; i++)
                Card(
                  elevation: 5,
                  shadowColor: Colors.teal,
                  color: Color.fromRGBO(137, 207, 240, 12),
                  child: Column(
                      children: [
                        ListTile(

                            onTap: (){
                              x= 255; y = 0; z=0;
                              Navigator.of(context).push(

                                  MaterialPageRoute(builder: (BuildContext con){return ChatDa(myList[i]);}));},
                            title: Text(myList[i].name),
                            subtitle: Text("Show Status"),
                            trailing: Text("13H"),
                            leading: CircleAvatar(backgroundImage: AssetImage(myList[i].img),
                            radius: 50,
                              backgroundColor: Color.fromRGBO(137, 207, 250, 4),
                            )),
                        Divider(thickness: 5,indent: 15, endIndent: 20, color: Colors.black,),
                        SizedBox(height: 20,),


                      ]
                  ),

                )


            ],
          ),
        ),
      ),

    );

  }
}