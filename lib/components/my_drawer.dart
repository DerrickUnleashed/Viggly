/*import 'package:flutter/material.dart';
import 'package:viggly_one/components/my_drawer_tile.dart';
import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Icon(
                Icons.fastfood_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            MyDrawerTile(
              text: "HOME",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            MyDrawerTile(
                text: "SETTINGS",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ));
                }),
            const Spacer(),
            MyDrawerTile(
                text: "LOGOUT",
                icon: Icons.logout,
                onTap: () {
                  Navigator.pop(context);
                }),
            const SizedBox(height: 25),
          ],
        ));
  }
}*/
/*
import 'package:flutter/material.dart';
import 'package:viggly_one/components/my_drawer_tile.dart';
import '../pages/settings_page.dart';
import '../pages/login_page.dart'; // Import the login page

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.fastfood_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {
              Navigator.pushAndRemoveUntil( // Navigate to login page and remove all previous routes
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(onTap: () {},),
                ),
                (Route<dynamic> route) => false, // Remove all previous routes
              );
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:viggly_one/components/my_drawer_tile.dart';
import '../pages/settings_page.dart';
import '../pages/login_page.dart'; // Import the login page

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset(
              'lib/images/logo1.jpeg', // Replace with your image path
              width: 80,
              height: 80,
              // You can customize width, height, and fit properties according to your image
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {
              Navigator.pushAndRemoveUntil( // Navigate to login page and remove all previous routes
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(onTap: () {},),
                ),
                (Route<dynamic> route) => false, // Remove all previous routes
              );
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
