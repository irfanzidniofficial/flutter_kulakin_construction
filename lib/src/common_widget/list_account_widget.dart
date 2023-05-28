// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class ListAccountWidget extends StatelessWidget {
  const ListAccountWidget({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.navigate_next,
                  color: greyColor,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
          color: greyColor.withOpacity(0.3),
        ),
      ],
    );
  }
}
