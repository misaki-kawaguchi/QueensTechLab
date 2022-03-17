import 'package:flutter/material.dart';
import 'package:task02/widgets/common_drawer.dart';
import 'package:task02/widgets/common_app_bar.dart';
import 'dart:math';

class ExhibitionsPage extends StatelessWidget {
  const ExhibitionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      endDrawer: const CommonDrawer(),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.95,
        shrinkWrap: true,
        children: List.generate(50, (index) {
          var imgNumber = Random().nextInt(6) + 1;
          var assetsImage = "images/exhibition" + imgNumber.toString() + ".jpg";

          return Column(children: <Widget>[
            Image.asset(
              assetsImage,
              fit: BoxFit.cover,
              height: 150.0,
              width: double.infinity,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                'sample',
                textAlign: TextAlign.left,
              ),
            ),
          ]);
        }),
      ),
    );
  }
}
