import 'package:flutter/material.dart';
import 'package:task02/widgets/common_drawer.dart';
import 'package:task02/widgets/common_app_bar.dart';
import 'package:task02/widgets/common_button.dart';
import 'package:task02/routes.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  void _planButton() {
    Navigator.of(context).pushNamed(planYourVisitPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      endDrawer: const AppBarDrawer(),
      body: Column(
        children: [
          Image.asset(
            'images/mainvisual.jpg',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'EXHIBITION',
                    style: TextStyle(color: Colors.black26, fontSize: 14),
                  ),
                  const Text(
                    'MASTERS\nOLD AND\nNEW',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(flex: 4),
                  CommonButton(text: 'Plan Your Visit', onPressed: _planButton),
                  const Spacer(flex: 2),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.place,
                              color: Color(0xFFFF473A),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '151 3rd St',
                                style: TextStyle(
                                  color: Color(0xFFFF473A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.watch_later,
                              color: Color(0xFFFF473A),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Open today',
                                style: TextStyle(
                                  color: Color(0xFFFF473A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
