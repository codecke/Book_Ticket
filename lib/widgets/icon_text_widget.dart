import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0XFFBFC2DF),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
