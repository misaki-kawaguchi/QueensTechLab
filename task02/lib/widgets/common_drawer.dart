import 'package:flutter/material.dart';
import 'package:task02/routes.dart';

class CommonDrawer extends StatefulWidget {
  const CommonDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CommonDrawer> createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
  void _goToExhibitionsPage() {
    Navigator.of(context).pushNamed(exhibitionsPage);
  }

  @override
  Widget build(BuildContext context) {
    List drawerItems = [
      {
        "text": "Exhibitions & Events",
        "icon": Icons.event,
        "onTap": _goToExhibitionsPage,
      },
      {
        "text": "Artists & Artworks",
        "icon": Icons.palette,
      },
      {
        "text": "Collections",
        "icon": Icons.collections,
      },
      {
        "text": "Plan Your Visit",
        "icon": Icons.confirmation_number,
      },
      {
        "text": "Become a Member",
        "icon": Icons.remember_me,
      },
      {
        "text": "Shop",
        "icon": Icons.shopping_bag,
      },
    ];

    return Drawer(
      backgroundColor: const Color(0xFF181828),
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) => CommonDrawerListTile(
          text: drawerItems[index]['text'],
          icon: drawerItems[index]['icon'],
          onTap: drawerItems[index]['onTap'],
        ),
      ),
    );
  }
}

class CommonDrawerListTile extends StatelessWidget {
  const CommonDrawerListTile({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      textColor: Colors.white70,
      leading: Icon(icon),
      iconColor: Colors.white70,
      onTap: onTap,
    );
  }
}
