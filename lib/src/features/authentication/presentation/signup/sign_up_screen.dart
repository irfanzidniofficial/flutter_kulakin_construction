import 'package:flutter/material.dart';
import 'package:flutter_kulakin_construction/src/common_widget/buttons_widget.dart';
import 'package:flutter_kulakin_construction/src/common_widget/form_widget.dart';
import 'package:flutter_kulakin_construction/src/shared/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/illustration/ill_sign_up.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Masuk ke Akunmu',
            style: orangeTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const CustomFormField(
                  title: "Email",
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomFormField(
                  title: "Password",
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomFilledButton(
                  title: 'Masuk',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextButton(
                  title: 'Sudah punya akun?, Login' ,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "OR",
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
