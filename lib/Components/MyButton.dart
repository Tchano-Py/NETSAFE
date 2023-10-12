// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String titulo;
  final String rotas;

  const MyButton({super.key, required this.titulo, required this.rotas});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, widget.rotas);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 64),
        backgroundColor: const Color(0xFF1DAA44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        widget.titulo,
        style: const TextStyle(
          fontSize: 17,
          fontFamily: 'Poppins',
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
