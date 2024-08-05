import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String name = "Dex";
  String accountEmail = "XWwJc@example.com";


  @override
  Widget build(BuildContext context) {
   return Drawer(
      child: Column(
    children: [
      UserAccountsDrawerHeader(
      

          accountName: Text("$name"), 
          accountEmail: Text("$accountEmail")),


      ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.pin_outlined),
            title: Text("About"),
            onTap: () {
              Navigator.pushNamed(context, '/about');

            },
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      )
    ],
  ));
  }
}