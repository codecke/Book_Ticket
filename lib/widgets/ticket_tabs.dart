import 'package:book_ticket/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({
    Key? key,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0XFFF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  firstTab,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(
                  secondTab,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
