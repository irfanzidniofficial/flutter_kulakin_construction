import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
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
        children: [
          Container(
            width: 359,
            height: 166,
            decoration: BoxDecoration(
              color: blueColor,
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
                      width: 15,
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
                      width: 20,
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
                    Text(
                      "Tambah Catatan",
                      style: orangeTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.favorite,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.delete,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: whiteColor,
                          width: 50,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
