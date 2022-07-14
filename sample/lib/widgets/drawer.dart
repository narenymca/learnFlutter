// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static.remove.bg/remove-bg-web/5c20d2ecc9ddb1b6c85540a333ec65e2c616dbbd/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
              padding: EdgeInsets.zero,
              // ignore: prefer_const_constructors
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("Narender Kumar"),
                accountEmail: const Text("naren_ymca07@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
