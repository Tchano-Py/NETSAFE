// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardWiFi extends StatefulWidget {
  final String wifi;

  const CardWiFi({super.key, required this.wifi});

  @override
  State<CardWiFi> createState() => _CardWiFiState();
}

class _CardWiFiState extends State<CardWiFi> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 64,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.070),
            border: Border.all(
              color: const Color(0xFF676767),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Image.asset("assets/images/ooui_network.png"),
              const SizedBox(
                width: 20,
              ),
              Text(
                widget.wifi,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        if (widget.wifi == "WI-FI Da Padaria" ||
            widget.wifi == "Cliníca Do Amigo")
          Positioned(
            top: -5,
            right: 12,
            width: 10,
            height: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Color(widget.wifi == "WI-FI Da Padaria"
                    ? 0xFF4CCF71
                    : 0xFFCFBA4C),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
