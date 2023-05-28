import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/common_widget/list_account_widget.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Akun",
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.local_mall,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/img_banner1.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '0812345678',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'johndoe@gmail.com',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  icon: const Icon(
                    Icons.edit,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: greyColor,
          ),
          const SizedBox(
            height: 10,
          ),
          ListAccountWidget(
            title: 'Daftar Alamat',
            onTap: () {},
          ),
          ListAccountWidget(
            title: 'Daftar Pemesanan',
            onTap: () {},
          ),
          ListAccountWidget(
            title: 'Wislist',
            onTap: () {},
          ),
          ListAccountWidget(
            title: 'Ulasan Produk',
            onTap: () {},
          ),
          ListAccountWidget(
            title: 'Vocuher',
            onTap: () {},
          ),
          ListAccountWidget(
            title: 'Buku Alamat',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
