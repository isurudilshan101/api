import 'package:flutter/material.dart';



class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
    
  }

}
class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("Weight on planet x"),
       centerTitle: true,
       backgroundColor: Colors.black54,
     ),
     backgroundColor: Colors.blueAccent,
     body: Container(
       alignment:Alignment.topCenter ,
       child: ListView(
         padding: const EdgeInsets.all(2.5),
         children: <Widget>[
           Image.asset('images/planet.png',
           height:133.0,
           width: 200.0,
           )
         ],
       ),
     ),
   );
    
  }

}