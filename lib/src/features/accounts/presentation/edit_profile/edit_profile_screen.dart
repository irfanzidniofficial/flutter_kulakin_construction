import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/common_widget/buttons_widget.dart';
import 'package:flutter_kulakin_construction/src/common_widget/form_widget.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Profile",
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/images/img_banner1.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Ubah Foto Profil",
            style: orangeTextStyle.copyWith(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 25,
          ),
          Divider(
            thickness: 1,
            color: greyColor.withOpacity(0.3),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: const [
                CustomFormField(
                  title: "Nama Lengkap",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFormField(
                  title: "Email Akun",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFormField(
                  title: "Kata Sandi",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFormField(
                  title: "No HP",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFormField(
                  title: "Tanggal Lahir",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFilledButton(
                  title: "Simpan",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
