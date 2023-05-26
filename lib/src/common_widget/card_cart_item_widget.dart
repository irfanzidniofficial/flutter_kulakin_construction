import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CardCartItemWidget extends StatefulWidget {
  const CardCartItemWidget({super.key});

  @override
  State<CardCartItemWidget> createState() => _CardCartItemWidgetState();
}

class _CardCartItemWidgetState extends State<CardCartItemWidget> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            blurRadius: 5,
            offset: const Offset(1, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 35,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(
                        (states) => orangeColor,
                      ),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isChecked = value!;
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.asset(
                        'assets/images/img_product1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Safety Helmet Blue Eagle \nHC31RD Topi Bangunan",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 55,
                    ),
                    Text(
                      "Tambah Catatan",
                      style: orangeTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.favorite,
                      color: greyColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.delete,
                      color: greyColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: greyColor,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(
                        "-",
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "1",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: greyColor,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(
                        "+",
                        style: greyTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
