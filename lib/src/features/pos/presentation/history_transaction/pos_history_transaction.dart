import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

import '../../../../common_widget/date_total_list_transaction_widget.dart';
import '../../../../common_widget/list_history_transaction_widget.dart';

class PosHistoryTransaction extends StatelessWidget {
  const PosHistoryTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.abc,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Filter set date & time",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.navigate_next,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Divider(
          thickness: 1,
          color: greyColor,
        ),
        const DateTotalListTransactionWidget(
          date: 'Sunday, 02 Agustus 2023',
          totalTransaction: 'Rp. 5.000.000',
        ),
        const ListHistoryTransactionWidget(),
        const ListHistoryTransactionWidget(),
        const DateTotalListTransactionWidget(
          date: 'Sunday, 02 Agustus 2023',
          totalTransaction: 'Rp. 5.000.000',
        ),
        const ListHistoryTransactionWidget(),
        const ListHistoryTransactionWidget(),
        const DateTotalListTransactionWidget(
          date: 'Sunday, 02 Agustus 2023',
          totalTransaction: 'Rp. 5.000.000',
        ),
        const ListHistoryTransactionWidget(),
        const ListHistoryTransactionWidget(),
      ],
    );
  }
}
