// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarAutenticar extends StatelessWidget {
  const AppBarAutenticar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.070),
                border: Border.all(
                  color: const Color(0xFF676767),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/ion_chevron-back.png"),
            ),
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
            child: Image.asset("assets/images/uil_info.png"),
          ),
        ],
      ),
    );
  }
}
