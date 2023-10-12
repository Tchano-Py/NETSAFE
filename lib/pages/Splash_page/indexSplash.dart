// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netsafe/pages/plano_page/indexPlano.dart';

class IndexSplash extends StatefulWidget {
  const IndexSplash({super.key});

  @override
  State<IndexSplash> createState() => _IndexSplashState();
}

class _IndexSplashState extends State<IndexSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IndexPlano(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/images/logo.png"),
                ),
                const SizedBox(
                  height: 40,
                  child: Text(
                    "A internet mais próxima de si",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const LinearProgressIndicator(
            minHeight: 6,
            backgroundColor: Colors.black,
            color: Color(0xFF1DAA44),
          ),
        ],
      ),
    );
  }
}
