import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async
{

  String _data=await getJson();

  print(_data);


  runApp(new MaterialApp(
    home: new Scaffold(
      appBar:new AppBar(
      title: new Text('JSON Parse'),
      centerTitle:true,
      ),
    body:new Center(
      child: new Text('Parsing...'),
    ),
    ),

  ));
}

Future<String>getJson() async{
  String apiUrl='https://jsonplaceholder.typicode.com/users/1/posts';
  http.Response response=await http.get(apiUrl);
  return JSON.decode(response.body).toString(); 
}