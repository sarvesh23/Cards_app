import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring Widget",
    home: Scaffold(
                    appBar: AppBar(title: Text("Basic List View"),),
                   body: getListView(),
                   ),
    debugShowCheckedModeBanner: false,
    )
  );
  
  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        ListTile (
          leading: Icon(Icons.landscape),
          title: Text("landscape"),
          subtitle: Text("Beautiful View"),
          trailing: Icon(Icons.wb_sunny),
          onTap: (){
                  debugPrint("Landscape Tapped");
          },
        )    ,
         ListTile (
          leading: Icon(Icons.laptop_chromebook),
          title: Text("Windows"),
          
        ),
        ListTile (
          leading: Icon(Icons.phone),
          title: Text("Phone"),
          
        ),
        Text("Yet  another element in list"),
        Container(color: Colors.red,height: 50.0,)   
          ],
          );
          
          
          return listView;
  }
    
