import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopee_app/core/app_config.dart';

class AuthAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String label;
  const AuthAppBar({super.key, required this.label});

  @override
  State<AuthAppBar> createState() => _AuthAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AuthAppBarState extends State<AuthAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Iconsax.arrow_left)),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Icon(
            Iconsax.shop_add,
            color: AppConfig.primaryColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(
            Iconsax.user,
            color: AppConfig.primaryColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
      title: Text(
        widget.label,
        style: AppConfig.textStyleAppbar,
      ),
    );
  }
}
