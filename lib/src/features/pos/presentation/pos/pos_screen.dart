import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/features/pos/presentation/history_transaction/pos_history_transaction.dart';
import 'package:flutter_kulakin_construction/src/features/pos/presentation/main/pos_main_screen.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

import '../products/pos_data_products.dart';

class PosScreen extends StatefulWidget {
  const PosScreen({super.key});

  @override
  State<PosScreen> createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Point of Sales"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            labelColor: orangeColor,
            unselectedLabelColor: blackColor,
            isScrollable: true,
            tabs: const [
              Tab(
                text: "Halaman Utama",
              ),
              Tab(
                text: "Product",
              ),
              Tab(
                text: "History Transaction",
              ),
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Account",
              ),
              Tab(
                text: "Alarm",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PosMainScreen(),
            PosDataProducts(),
            PosHistoryTransaction(),
            Center(
              child: Icon(Icons.alarm),
            ),
            Center(
              child: Icon(Icons.home),
            ),
            Center(
              child: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
