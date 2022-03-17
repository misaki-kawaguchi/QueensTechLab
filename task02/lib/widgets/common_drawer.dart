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
    return Drawer(
      backgroundColor: const Color(0xFF181828),
      child: ListView(
        children: <Widget>[
          CommonDrawerListTile(
            text: "Exhibitions & Events",
            icon: Icons.event,
            onTap: _goToExhibitionsPage,
          ),
          const CommonDrawerListTile(
            text: "Artists & Artworks",
            icon: Icons.palette,
          ),
          const CommonDrawerListTile(
            text: "Collections",
            icon: Icons.collections,
          ),
          const CommonDrawerListTile(
            text: "Plan Your Visit",
            icon: Icons.confirmation_number,
          ),
          const CommonDrawerListTile(
            text: "Become a Member",
            icon: Icons.remember_me,
          ),
          const CommonDrawerListTile(
            text: "Shop",
            icon: Icons.shopping_bag,
          ),
        ],
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
