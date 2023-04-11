import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment1;
  const ColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment1,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
