import 'package:flutter/material.dart';



class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
    
  }

}
class HomeState extends State<Home>{
  int radioValue=0;

  void  handleRadioValueChanged(int value){
    setState(() {
      radioValue=value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title:Text("Weight on planet x"),
       centerTitle: true,
       backgroundColor: Colors.black54,
     ),
     backgroundColor: Colors.blueGrey,
     body: Container(
       alignment:Alignment.topCenter ,
       child: ListView(
         padding: const EdgeInsets.all(2.5),
         children: <Widget>[
           Image.asset('images/planet.png',
           height:133.0,
           width: 200.0,
           ),
           Container(
             margin: const EdgeInsets.all(3.0),
             alignment: Alignment.center,
             child:Column(
               children: <Widget>[
                 TextField(
                   controller: null,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     labelText: 'Your Weight on Earth',
                     hintText: 'In Pounds',
                     icon: Icon(Icons.person_outline),
                   ),

                 ),
                 Padding(padding: EdgeInsets.all(5.0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     //radio buttons
                     Radio<int>
                    (activeColor: Colors.brown,
                      value: 0, groupValue: radioValue, onChanged: handleRadioValueChanged),

                     Text(
                       "Pluto",
                       style:TextStyle(color: Colors.white30),
                       ),
                      Radio<int>
                     (
                       activeColor: Colors.red,
                       value: 1, groupValue: radioValue , onChanged:  handleRadioValueChanged),
                     
                     Text(
                       "Mars",
                       style:TextStyle(color: Colors.white30),
                       ),
                       
                     Radio<int>
                     (   activeColor: Colors.redAccent,
                       value: 2, groupValue: radioValue, onChanged:  handleRadioValueChanged),
                   
                   Text(
                       "Venus",
                       style:TextStyle(color: Colors.white30),
                       ),

                   ],
                 ),
                 Padding(padding: EdgeInsets.all(15.6)),
                //Result text
                 Text(
                   "Hello There",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 19.4,
                     fontWeight: FontWeight.w500,

                   ),
                 ),
               ],

             ), 
           ),
         ],
       ),
     ),
   );
    
  }

}