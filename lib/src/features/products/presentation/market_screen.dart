import 'package:flutter/material.dart';

import '../../../common_widget/card_product_widget.dart';
import '../../../shared/theme.dart';
import '../domain/kproduct.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 40,
          color: whiteColor,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.only(
                left: 10,
              ),
              hintText: "Cari produk",
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: orangeColor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: whiteColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        leading: Icon(
          Icons.flip,
          color: blackColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.local_mall,
              color: blackColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: GridView.builder(
                itemCount: kProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => CardProduct(
                  product: kProducts[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
