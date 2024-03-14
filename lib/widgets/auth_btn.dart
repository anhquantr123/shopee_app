import 'package:flutter/material.dart';
import 'package:shopee_app/core/app_config.dart';

class AuthBtn extends StatefulWidget {
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  const AuthBtn(
      {super.key, required this.label, this.backgroundColor, this.textColor});

  @override
  State<AuthBtn> createState() => _AuthBtnState();
}

class _AuthBtnState extends State<AuthBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          widget.label,
          style: TextStyle(color: widget.textColor, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
      ),
    );
  }
}
