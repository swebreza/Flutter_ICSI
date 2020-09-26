import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              leading: Image.asset(
                'assets/images/icons/user.png',
                scale: 4,
              ),
              title: Text("Student")),
          ListTile(
            leading: Image.asset(
              'assets/images/icons/house.png',
              scale: 12,
            ),
            title: Text("Home"),
            onTap: () => Navigator.of(context).pushNamed('/'),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/icons/windows.png',
              scale: 12,
            ),
            title: Text("Products"),
            onTap: () => Navigator.of(context).pushNamed('/product'),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/icons/network.png',
              scale: 12,
            ),
            title: Text("Contact Us"),
            onTap: () => Navigator.of(context).pushNamed('/contact'),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/icons/notebook.png',
              scale: 12,
            ),
            title: Text("Notes"),
            onTap: () => Navigator.of(context).pushNamed('/notes'),
          ),
          ListTile(
            leading: Image.asset(
              'assets/images/icons/notebook.png',
              scale: 12,
            ),
            title: Text("SignIn"),
            onTap: () => Navigator.of(context).pushNamed('/signin'),
          ),
          Image.asset(
            'assets/images/applications.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
