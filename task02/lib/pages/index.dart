import 'package:flutter/material.dart';
import 'package:task02/widgets/app_bar_drawer.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'THE\nART\nMUSEUM',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ),
      endDrawer: const AppBarDrawer(),
    );
  }
}
