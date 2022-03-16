import 'package:flutter/material.dart';
import 'package:task02/widgets/common_drawer.dart';
import 'package:task02/widgets/common_app_bar.dart';

class ExhibitionsPage extends StatelessWidget {
  const ExhibitionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      endDrawer: AppBarDrawer(),
      body: Text('Exhibitions & Events'),
    );
  }
}