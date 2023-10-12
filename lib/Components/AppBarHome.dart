// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo_2.png",
            width: MediaQuery.of(context).size.width * .35,
          ),
          Container(
            width: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.070),
              border: Border.all(
                color: const Color(0xFF676767),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/Vector.png"),
          ),
        ],
      ),
    );
  }
}
