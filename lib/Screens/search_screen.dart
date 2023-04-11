// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/widgets/icon_text_widget.dart';
import 'package:book_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'What are\nyou looking for ?',
            style: Styles.headLineStyle.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TicketTabs(
            firstTab: 'Airline Ticket',
            secondTab: 'Hotels',
          ),
          const SizedBox(
            height: 30,
          ),
          const IconTextWidget(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const SizedBox(
            height: 15,
          ),
          const IconTextWidget(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0XD90030CE),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headLineStyle2,
              ),
              InkWell(
                onTap: () {
                  print('You\'re tapped');
                },
                child: Text(
                  'View All',
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 3,
                        spreadRadius: 2,
                      )
                    ]),
                height: 400,
                width: size.width * 0.42,
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/courier.jpeg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '20% discount on all booking of flights, Don\'t miss out on this chance',
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 174,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                          color: const Color(0XFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0XFF189999),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    height: 210,
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 30),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 35),
                            ),
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 30),
                            ),
                          ]),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
