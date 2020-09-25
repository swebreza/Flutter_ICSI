import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Here Is A List If Products",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(title: Text("Products 1")),
              ListTile(title: Text("Products 2")),
              ListTile(title: Text("Products 3")),
              ListTile(title: Text("Products 4")),
              ListTile(title: Text("Products 5")),
              ListTile(title: Text("Products 6")),
              ListTile(title: Text("Products 7")),
              ListTile(title: Text("Products 8")),
              ListTile(title: Text("Products 9")),
              ListTile(title: Text("Products 10")),
              ListTile(title: Text("Products 11")),
            ],
          ),
        ],
      ),
    );
  }
}
