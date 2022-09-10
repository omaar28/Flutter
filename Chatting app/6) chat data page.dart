import 'package:flutter/material.dart';
import 'products.dart';
class ChatDa extends StatelessWidget {
  var p = TextEditingController();

  Products prod;
  ChatDa(this.prod);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text(prod.name), accountEmail: Text("You missed a chat from ${prod.name}"),
                currentAccountPicture: InkWell(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(prod.img),
                  ),
                )),

            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Copy Text', style: TextStyle(color: Colors.black45),),
                trailing: Icon(Icons.file_copy_rounded),
              ),
            ),
            Divider(
          color: Color.fromRGBO(137, 207, 240, 12),

      thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Call', style: TextStyle(color:Colors.black45),),
                trailing: Icon(Icons.call),
              ),
            ),
            Divider(
              color: Color.fromRGBO(137, 207, 240, 12),
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Video call', style: TextStyle(color: Colors.black45),),
                trailing: Icon(Icons.videocam),
              ),
            ),
            Divider(
              color: Color.fromRGBO(137, 207, 240, 12),
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Chat settings', style: TextStyle(color: Colors.black45),),
                trailing: Icon(Icons.settings_applications_sharp),
              ),
            ),
            Divider(
              color: Color.fromRGBO(137, 207, 240, 12),
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                title: Text('Contact settings', style: TextStyle(color:Colors.black45,),),
                trailing: Icon(Icons.settings),
              ),
            ),
            Divider(
              color: Color.fromRGBO(137, 207, 240, 12),
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),

          ],
        ),


      ),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(137, 207, 240, 12),
        title: Text(prod.name),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
             children: [Image.asset("assets/image/Naw.pngTextFrofField"),]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  controller: p,
                  onChanged: (c){ print(c); },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0)),
                    hintText: 'Type a text...',
                    suffixIcon: InkWell(onTap: (){},  child: Icon(Icons.keyboard),),
                    prefixIcon: Icon(Icons.emoji_emotions),
                  ),
                ),
              ],
            )
          ],
        ),


    );
  }
}

