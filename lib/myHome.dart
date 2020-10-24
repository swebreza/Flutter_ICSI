import 'package:Flutter_ICSI/sidemenu.dart';
import 'package:flutter/material.dart';

//-----------------------------------------------------------
// Container Constructor
// ignore: non_constant_identifier_names

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Gurukul'),
        actions: [
          IconButton(
            alignment: Alignment.topRight,
            color: Colors.purple,
            onPressed: () {},
            icon: Icon(Icons.video_collection),
          ),
          IconButton(
            alignment: Alignment.topRight,
            color: Colors.purple,
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: SideMenu(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 8, 20, 0),
                    child: Image.asset(
                      'assets/images/ol.png',
                      scale: 4,
                    ),
                  ),
                  Text("Hello Student"),
                ],
              ),
              Image.asset(
                'assets/images/laptop.png',
                alignment: Alignment.center,
                fit: BoxFit.cover,
                scale: 0.5,
              ),
              Text(
                "All the Services Are Here",
                style: TextStyle(fontSize: 20, color: Colors.lightBlue[300]),
              ),
              GridView.count(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                primary: false,
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 8.0,
                children: <Widget>[
                  // Grid Contents--------------------------------------------|
                  Cnt('assets/images/icons/house.png', "Home Contents", null),
                  Cnt('assets/images/webinar.png', "ANNOUNCEMENTS", null),
                  Cnt('assets/images/online class.png', "REVISION LECTURES",
                      null),
                  Cnt('assets/images/online help.png', "DOUBTS", null),
                  Cnt('assets/images/online library.png', "FREE NOTES", null),
                  Cnt('assets/images/pdf files.png', "ICSI MATERIALS", null),
                  // Grid Contents--------------------------------------------|
                ],
              ),
              Text(
                "Our Achivers",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  wordSpacing: 35,
                  letterSpacing: 11,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Column(
                  children: [
                    Text(
                      '''Just for 99, Get unlimited access to our hand wirtten notes and extra features
                      --------------------------------------------------------------------''',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget Cnt(
  String img,
  String txt,
  String link,
) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Color(0xFF6F35A5)),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            // height: size.height * 0.35,

            child: Text(
              txt,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            img,
            scale: 0.8,
            cacheHeight: 40,
            cacheWidth: 40,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    ),
    onTap: () => link,
  );
}
//-----------------------------------------------------------
