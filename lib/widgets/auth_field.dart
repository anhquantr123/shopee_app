import 'package:flutter/material.dart';
import 'package:shopee_app/screens/forgot_pass_screen.dart';

class AuthFiled extends StatefulWidget {
  final String hinText;
  final bool suffixIcon;
  final IconData preIcon;

  const AuthFiled({
    super.key,
    required this.hinText,
    this.suffixIcon = false,
    required this.preIcon,
  });

  @override
  State<AuthFiled> createState() => _AuthFiledState();
}

class _AuthFiledState extends State<AuthFiled> {
  bool isVisibility = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisibility,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 6),
        prefixIcon: Icon(widget.preIcon),
        hintText: widget.hinText,
        suffixIcon: widget.suffixIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Icon(
                      isVisibility ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                    onTap: () {
                      setState(() {
                        isVisibility = !isVisibility;
                      });
                    },
                  ),
                  const VerticalDivider(
                    color: Colors.red,
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (buider) => ForgotPassWordScreen()));
                    },
                    child: Text(
                      "Quên ?",
                      style:
                          TextStyle(fontSize: 14, color: Colors.blue.shade400),
                    ),
                  )
                ],
              )
            : const SizedBox.shrink(),
        hintStyle: const TextStyle(fontSize: 14, color: Colors.black26),
      ),
    );
  }
}
