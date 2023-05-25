import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/common_widget/buttons_widget.dart';

import '../features/products/domain/product.dart';
import '../shared/theme.dart';

class CardProduct extends StatelessWidget {
  final Product? product;
  final Function? press;
  const CardProduct({
    super.key,
    this.product,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                blurRadius: 8,
                offset: const Offset(1, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(
                    15,
                  ),
                ),
                child: Image.asset(
                  product!.image!,
                  height: 150,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product!.title,
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rp. ${product?.price!}",
                      style: orangeTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: extraBold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${product?.priceStreak!}",
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: CustomFilledButton(
                  title: "Tambahkan ke Bag",
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
