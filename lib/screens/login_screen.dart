// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopee_app/core/app_config.dart';
import 'package:shopee_app/widgets/auth_appbar.dart';
import 'package:shopee_app/widgets/auth_btn.dart';
import 'package:shopee_app/widgets/auth_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        label: "Đăng nhập",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/logo.png"),
                width: 60,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              AuthFiled(
                  hinText: "Email/Số điện thoại/Tên đăng nhập",
                  preIcon: Iconsax.user),
              SizedBox(
                height: 10,
              ),
              AuthFiled(
                hinText: "Passworld",
                preIcon: Iconsax.lock,
                suffixIcon: true,
              ),
              SizedBox(
                height: 15,
              ),
              AuthBtn(
                backgroundColor: AppConfig.primaryColor,
                label: "Đăng nhập",
                textColor: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Đăng nhập bằng SMS",
                    style: TextStyle(color: Colors.blue.shade400),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(children: const <Widget>[
                Expanded(child: Divider()),
                Text("  Hoặc  "),
                Expanded(child: Divider()),
              ]),
              SizedBox(
                height: 10,
              ),
              AuthBtn(label: "Google"),
              SizedBox(
                height: 10,
              ),
              AuthBtn(label: "Facebook"),
              Spacer(),
              Text("Bạn không có tài khoản? Đăng ký!")
            ],
          ),
        ),
      ),
    );
  }
}
