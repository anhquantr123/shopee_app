import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopee_app/widgets/auth_appbar.dart';

class ForgotPassWordScreen extends StatefulWidget {
  const ForgotPassWordScreen({super.key});

  @override
  State<ForgotPassWordScreen> createState() => _ForgotPassWordScreenState();
}

class _ForgotPassWordScreenState extends State<ForgotPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AuthAppBar(
          label: "Gửi lại mật khẩu",
        ),
        backgroundColor: Colors.white,
        body: Text("welcome to scfrrnajbdsfhdslif"),
      ),
    );
  }
}
