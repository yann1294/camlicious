import 'package:camlicious/UI/mainpage.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  static String tag = 'Home';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: InkWell(
              onTap: showmainpage,
              child: Text(
                "Camlicious",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    //      fontFamily: 'Sans-serif',
                    fontSize: 45.0),
              )
          )
      ),
    );
  }

  showmainpage() {
    Navigator.pushNamed(
        context,
        Mainpage.tag
    );
  }
}
