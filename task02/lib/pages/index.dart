import 'package:flutter/material.dart';
import 'package:task02/widgets/common_drawer.dart';
import 'package:task02/widgets/common_app_bar.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      endDrawer: AppBarDrawer(),
    );
  }
}