import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double opacity = 0;
  int currentTap = 0;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        opacity = 1;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedOpacity(
            duration: const Duration(seconds: 2),
            curve: Curves.easeIn,
            opacity: opacity,
            child: Text("This data loading await ")),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Iconsax.home),
                    Text(
                      "home",
                      style: TextStyle(
                          fontSize: 12,
                          color: currentTap == 0
                              ? Colors.deepOrange
                              : Colors.black38),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Iconsax.user),
                    Text(
                      "Users",
                      style: TextStyle(
                          fontSize: 14,
                          color: currentTap == 4
                              ? Colors.deepOrange
                              : Colors.black38),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
