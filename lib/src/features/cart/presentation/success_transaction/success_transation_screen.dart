import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

class SuccessTransactionScreen extends StatelessWidget {
  const SuccessTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/ic_success.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Success Transaction",
                  style: orangeTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Method Payment: CASH",
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        Divider(
                          color: whiteColor,
                        ),
                        Text(
                          "Money Changes: Rp12.000",
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: lightRedColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: lightRedColor,
                      width: 1,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEND RECIPT",
                      style: orangeTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: whiteColor,
                width: 1,
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "PRINT RECIPT",
                style: whiteTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: whiteColor,
                width: 1,
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "NEXT ORDER",
                style: orangeTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
