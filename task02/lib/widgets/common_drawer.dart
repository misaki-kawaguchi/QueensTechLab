import 'package:flutter/material.dart';
import 'package:task02/routes.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF181828),
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("Exhibitions & Events"),
            textColor: Colors.white70,
            leading: const Icon(Icons.event),
            iconColor: Colors.white70,
            onTap: () {
              Navigator.of(context).pushNamed(exhibitionsPage);
            },
          ),
          const ListTile(
            title: Text("Artists & Artworks"),
            textColor: Colors.white70,
            leading: Icon(Icons.palette),
            iconColor: Colors.white70,
          ),
          const ListTile(
            title: Text("Collections"),
            textColor: Colors.white70,
            leading: Icon(Icons.collections),
            iconColor: Colors.white70,
          ),
          const ListTile(
            title: Text("Plan Your Visit"),
            textColor: Colors.white70,
            leading: Icon(Icons.confirmation_number),
            iconColor: Colors.white70,
          ),
          const ListTile(
            title: Text("Become a Member"),
            textColor: Colors.white70,
            leading: Icon(Icons.remember_me),
            iconColor: Colors.white70,
          ),
          const ListTile(
            title: Text("Shop"),
            textColor: Colors.white70,
            leading: Icon(Icons.shopping_bag),
            iconColor: Colors.white70,
          ),
        ],
      ),
    );
  }
}