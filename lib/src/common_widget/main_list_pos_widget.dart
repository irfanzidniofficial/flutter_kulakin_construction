// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class MainListPosWidget extends StatelessWidget {
  const MainListPosWidget({
    Key? key,
    this.icon = "assets/icons/ic_dollar.png",
    required this.title,
    required this.label,
  }) : super(key: key);

  final String icon;
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: orangeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              icon,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: whiteTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
