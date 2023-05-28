import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/common_widget/buttons_widget.dart';
import 'package:flutter_kulakin_construction/src/common_widget/card_cart_item_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Keranjang',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        children: [
          const SizedBox(
            height: 15,
          ),
          const CardCartItemWidget(),
          const SizedBox(
            height: 20,
        ),
          const CardCartItemWidget(),
          const SizedBox(
            height: 30,
          ),
          CustomFilledButton(
            title: 'Checkout',
            onPressed: () => Navigator.pushNamed(
              context,
              '/success-transaction',
            ),
          ),
        ],
      ),
    );
  }
}
