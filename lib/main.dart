import 'package:Flutter_ICSI/routes_map.dart';
import 'package:flutter/material.dart';
import './sidemenu.dart';

void main() {
  runApp(MyApp());
}
//-----------------------------------------------------------

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Routes------------------------------------------------
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      //Routes------------------------------------------------

      debugShowCheckedModeBanner: false,
      title: 'ICSI',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

//-----------------------------------------------------------
// Container Constructor
// ignore: non_constant_identifier_names
Widget Cnt(String img, String txt, String link) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.indigoAccent),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(20),
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 30, 20),
            child: Text(
              txt,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Image.asset(
            img,
            scale: 0.8,
            cacheHeight: 80,
            cacheWidth: 90,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    ),
    onTap: () => link,
  );
}
//-----------------------------------------------------------

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//-----------------------------------------------------------

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICSI'),
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
                crossAxisCount: 2,
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
