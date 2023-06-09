// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DateTotalListTransactionWidget extends StatelessWidget {
  const DateTotalListTransactionWidget({
    Key? key,
    required this.date,
    required this.totalTransaction,
  }) : super(key: key);

  final String date;
  final String totalTransaction;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Sunday, 02 August 2023',
              ),
              Spacer(),
              Text(
                'Rp. 5.000.000',
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
