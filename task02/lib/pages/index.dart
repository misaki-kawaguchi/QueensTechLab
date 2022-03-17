import 'package:flutter/material.dart';
import 'package:task02/routes.dart';
import 'package:task02/widgets/common_drawer.dart';
import 'package:task02/widgets/common_app_bar.dart';
import 'package:task02/widgets/common_button.dart';
import 'package:task02/widgets/exhibition_info.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  void _goToPlanPage() {
    Navigator.of(context).pushNamed(planYourVisitPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      endDrawer: const CommonDrawer(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: Image.asset(
              'images/mainvisual.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'EXHIBITION',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'MASTERS\nOLD AND\nNEW',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(flex: 3),
                  CommonButton(
                    text: 'Plan Your Visit',
                    onPressed: _goToPlanPage,
                  ),
                  const Spacer(flex: 1),
                  const ExhibitionInfo(),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
