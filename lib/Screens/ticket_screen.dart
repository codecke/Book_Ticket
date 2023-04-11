import 'package:book_ticket/Screens/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/widgets/column_layout.dart';
import 'package:book_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: Styles.headLineStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              const TicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(right: 15),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 010),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: 'FlutterDB',
                          secondText: 'Passenger',
                          alignment1: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: '5221  364896',
                          secondText: 'Passport',
                          alignment1: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: '0055 4444 77147',
                          secondText: 'Number of E-ticket',
                          alignment1: CrossAxisAlignment.start,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment1: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Transform.rotate(
                                  angle: 1.55,
                                  child: Image.asset(
                                    'assets/images/profile.jpeg',
                                    scale: 12,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '*** 2462',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Payment Method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const ColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment1: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TicketView(ticket: ticketList[1])
            ],
          ),
          Positioned(
            top: 315,
            left: 21,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: 315,
            right: 21,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
