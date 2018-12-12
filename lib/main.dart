import 'package:camlicious/UI/Home.dart';
import 'package:camlicious/UI/mainpage.dart';
import 'package:flutter/material.dart';
void main(){

  final routes = <String,WidgetBuilder>{
    Home.tag: (context)=>Home(),
    Mainpage.tag: (context)=>Mainpage(),
  };

  runApp(
      MaterialApp(

        title: "Camlicious",
        home: Home(),
        routes: routes,
        debugShowCheckedModeBanner: false,
      )
  );
}