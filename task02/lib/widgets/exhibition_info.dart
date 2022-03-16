import 'package:flutter/material.dart';

class ExhibitionInfo extends StatelessWidget {
  const ExhibitionInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ExhibitionInfoList(
          text: '151 3rd St',
          icon: Icons.place,
        ),
        ExhibitionInfoList(
          text: 'Open today',
          icon: Icons.watch_later,
        ),
      ],
    );
  }
}

class ExhibitionInfoList extends StatelessWidget {
  const ExhibitionInfoList({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFFF473A),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFF473A),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}