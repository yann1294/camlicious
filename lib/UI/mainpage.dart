library camlicious.mainpage;

import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  static String tag = 'mainpage';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainpageState();
  }
}

class MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Camlicious",
          style: TextStyle(
              color: Colors.white70,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: menuList)
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(5.0),
          children: <Widget>[
            Image.asset(
              "assets/images/poulet.jpg",
              height: 85.0,
              width: 75.0,
            ),
            Container(
              margin: const EdgeInsets.all(13.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  InkWell(
                 child: Image.asset(
                    "assets/images/animals.jpg",
                    fit: BoxFit.cover,
                  ),
                    onTap: ()=>{},
                    splashColor: Colors.green.shade200,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void menuList() {}
}
