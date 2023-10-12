// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netsafe/Components/CardPlanos.dart';
import 'package:netsafe/Components/MyButton.dart';

class IndexPlano extends StatefulWidget {
  const IndexPlano({super.key});

  @override
  State<IndexPlano> createState() => _IndexPlanoState();
}

class _IndexPlanoState extends State<IndexPlano> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 115),
              child: Text(
                "Qual plano \ndeseja?",
                style: TextStyle(
                  height: 1,
                  fontSize: 34,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22),
              child: Text(
                "Clique no plano que deseja e continue o seu processo.",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: SizedBox(
                height: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CardPlanos(
                        titulo: "GRATUITO",
                        valor: "0 Kz",
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: CardPlanos(
                        titulo: "ILIMITADO",
                        valor: "2000 Kz",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Text(
                "Benefícios:",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
              child: Text(
                "Poderá se conectar a 2 redes semanalmente, com possibilidade de consumir até 5Gb em cada uma delas.",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 94,
                bottom: 42,
              ),
              child: MyButton(titulo: "Avançar", rotas: "/home"),
            ),
          ],
        ),
      ),
    );
  }
}
