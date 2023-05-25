import 'package:flutter/material.dart';

import '../../../common_widget/card_product_flash_sale.dart';
import '../../../common_widget/custom_carousel_slider.dart';
import '../../../common_widget/menu_botton.dart';
import '../../../shared/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomLocationWidget(),
            const SizedBox(
              height: 20,
            ),
            const CustomCarouselSliderWidget(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemInfoCardWidget(
                        label: 'Saldo',
                        desc: 'Payletter',
                        value: 'Rp. 351',
                        icon: Icon(
                          Icons.account_balance_wallet,
                          color: blueColor,
                        ),
                      ),
                      const Spacer(),
                      ItemInfoCardWidget(
                        label: 'Platinum',
                        desc: 'Saldo ticket',
                        value: '27.218',
                        icon: Icon(
                          Icons.stars,
                          color: blackColor,
                        ),
                      ),
                      const Spacer(),
                      const ItemInfoCardWidget(
                        label: 'Voucher',
                        desc: 'Diskon',
                        value: 'Rp. 351',
                        icon: Icon(
                          Icons.monetization_on,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const [
                          MenuButton(
                            image: 'assets/icons/ic_all.png',
                            label: 'Semua',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_cat.png',
                            label: 'Cat',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_kawat.png',
                            label: 'Kawat',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_besi.png',
                            label: 'Besi',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_bata.png',
                            label: 'Bata',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_pipa.png',
                            label: 'Pipa',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_batu.png',
                            label: 'Batu',
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          MenuButton(
                            image: 'assets/icons/ic_kabel.png',
                            label: 'Kabel',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_batako.png',
                            label: 'Batako',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_keramik.png',
                            label: 'Keramik',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_bambu.png',
                            label: 'Bambu',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_paku.png',
                            label: 'Paku',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_genteng.png',
                            label: 'Genteng',
                          ),
                          MenuButton(
                            image: 'assets/icons/ic_pasir.png',
                            label: 'Pasir',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Text(
                    "Rekomendasi",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: lightRedColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        '02:17:39',
                        style: redTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Lihat Semua",
                    style: orangeTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: const [
                      CardProductFlashSaleWidget(
                        discount: '17',
                        discountPrice: 'Rp. 13.000',
                        image: 'assets/images/img_product1.png',
                        percentSales: '20%',
                        price: '18.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '17',
                        discountPrice: 'Rp. 19.000',
                        image: 'assets/images/img_product2.png',
                        percentSales: '70%',
                        price: '18.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '9',
                        discountPrice: 'Rp. 18.000',
                        image: 'assets/images/img_product3.png',
                        percentSales: '50%',
                        price: '22.000',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CardProductFlashSaleWidget(
                        discount: '21',
                        discountPrice: 'Rp. 28.000',
                        image: 'assets/images/img_product4.png',
                        percentSales: '87%',
                        price: '38.000',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemInfoCardWidget extends StatelessWidget {
  final String label;
  final String value;
  final String desc;
  final Widget icon;

  const ItemInfoCardWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.desc,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            Text(
              label,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: blackTextStyle.copyWith(
            fontSize: 17,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          desc,
          style: greyTextStyle.copyWith(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}

class CustomLocationWidget extends StatelessWidget {
  const CustomLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: greyColor,
          ),
          RichText(
            text: TextSpan(
              text: "Kirim ke: ",
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "RUMAH, Toni, A atau Intan",
                  style: blackTextStyle.copyWith(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.expand_more,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
