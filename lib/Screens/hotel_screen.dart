// ignore_for_file: sized_box_for_whitespace

import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 17,
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 15,
            spreadRadius: 10,
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        right: 17,
        top: 5,
        bottom: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle2.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '\$${hotel['prize']}/night',
            style: Styles.headLineStyle.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
