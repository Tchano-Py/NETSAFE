// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardPlanos extends StatefulWidget {
  final String titulo;
  final String valor;

  const CardPlanos({super.key, required this.titulo, required this.valor});

  @override
  State<CardPlanos> createState() => _CardPlanosState();
}

class _CardPlanosState extends State<CardPlanos> {
  @override
  Widget build(BuildContext context) {
    dynamic fundo = widget.titulo == "GRATUITO" ? 255 : 0;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(fundo, fundo, fundo, 0.070),
            border: Border.all(
              color: const Color(0xFF676767),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    widget.valor,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Text(
                widget.titulo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        if (widget.titulo == "GRATUITO")
          Positioned(
            top: -10,
            right: 12,
            width: 15,
            height: 30,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF4CCF71),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
