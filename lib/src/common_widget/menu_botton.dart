import 'package:flutter/material.dart';

import '../shared/theme.dart';


class MenuButton extends StatelessWidget {
  final String image;
  final String label;

  const MenuButton({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: const BoxDecoration(
          // color: greyColor,
          ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}