import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero ,
                accountName:Text("XYZ"),
                accountEmail: Text("xyz00@gmail.com"),
                currentAccountPicture: CircleAvatar(),
              ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.person_rounded),
            title: Text("Profile"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Contact"),
          ),

          Divider(),

        ],
      ),
    );
  }
}
