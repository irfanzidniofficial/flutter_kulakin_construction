import 'package:flutter/material.dart';

import '../../../../common_widget/main_list_pos_widget.dart';
import '../../../../shared/theme.dart';

class PosMainScreen extends StatelessWidget {
  const PosMainScreen({super.key});

  @override
  // void initState() {
  //   // _tooltipBehavior = TooltipBehavior(enable: true);
  //   // super.initState();
  // }

  // List<SalesData> data = [
  //   SalesData('Jan', 35),
  //   SalesData('Feb', 28),
  //   SalesData('Mar', 34),
  //   SalesData('Apr', 32),
  //   SalesData('May', 40)
  // ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Text(
              "Periode Data",
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: greyColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: greyColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Real Time: Hari ini: Pk 21.00",
                      style: blackTextStyle.copyWith(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              MainListPosWidget(
                icon: 'assets/icons/ic_dollar.png',
                label: 'Total\nOmzet',
                title: 'Rp. 123.456',
              ),
              SizedBox(
                width: 10,
              ),
              MainListPosWidget(
                icon: 'assets/icons/ic_list_transaction.png',
                label: 'Total\nTransaksi',
                title: '1 039',
              ),
              SizedBox(
                width: 10,
              ),
              MainListPosWidget(
                icon: 'assets/icons/ic_person.png',
                label: 'Point yang\ndiperoleh',
                title: '1 039',
              ),
              SizedBox(
                width: 10,
              ),
              MainListPosWidget(
                icon: 'assets/icons/ic_click.png',
                label: 'Notifikasi\nPesanan',
                title: '1 039',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        Text(
          'Grafik setiap Kriteria',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // SizedBox(
        //   height: 200,
        //   child: SfCartesianChart(
        //     primaryXAxis: CategoryAxis(),
        //     title: ChartTitle(text: 'Penjualan'),
        //     legend: Legend(isVisible: true),
        //     tooltipBehavior: _tooltipBehavior,
        //     series: <LineSeries<SalesData, String>>[
        //       LineSeries(
        //         dataSource: data,
        //         xValueMapper: (SalesData sales, _) => sales.year,
        //         yValueMapper: (SalesData sales, _) => sales.sales,
        //         name: "Sales",
        //         dataLabelSettings: const DataLabelSettings(isVisible: true),
        //       ),
        //     ],
        //   ),
        // ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Peringkat Produk',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        DataTable(
          columnSpacing: 10,
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text(
                  'No',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Item',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Qty',
                ),
              ),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Pendapatan',
                ),
              ),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('1')),
                DataCell(Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_cat.png',
                      width: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Cat',
                    )
                  ],
                )),
                const DataCell(Text('210')),
                const DataCell(Text('Rp9.000.000')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('2')),
                DataCell(Row(
                  children: [
                    Image.asset(
                      'assets/icons/ic_cat.png',
                      width: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Cat',
                    )
                  ],
                )),
                const DataCell(Text('210')),
                const DataCell(Text('Rp9.000.000')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
