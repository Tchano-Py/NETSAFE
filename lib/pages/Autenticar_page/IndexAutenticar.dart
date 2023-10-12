// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netsafe/Components/AppBarAutenticar.dart';

class IndexAutenticar extends StatefulWidget {
  const IndexAutenticar({super.key});

  @override
  State<IndexAutenticar> createState() => _IndexAutenticarState();
}

class _IndexAutenticarState extends State<IndexAutenticar> {
  bool online = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const AppBarAutenticar(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                    left: 20,
                    right: 20,
                  ),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 3),
                            curve: Curves.fastOutSlowIn,
                            child: Text(
                              online ? "3Gb" : "0",
                              style: const TextStyle(
                                color: Colors.white,
                                height: 0,
                                fontSize: 60,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "/s",
                            style: TextStyle(
                              color: Colors.white30,
                              height: 0,
                              fontSize: 30,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            "armazenados",
                            style: TextStyle(
                              color: Colors.white30,
                              height: 2.1,
                              fontSize: 17,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          "Rede",
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 17,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                      Text(
                        "WI-FI Da Padaria",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                if (online)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 65,
                    ),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 3),
                      curve: Curves.fastOutSlowIn,
                      color: const Color.fromRGBO(255, 255, 255, 0.070),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Desempenho",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Muito boa",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/Chart.png"),
                        ],
                      ),
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 65,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Status da rede:",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 17,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Text(
                            "Muito boa",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Velocidade: ",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 17,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Text(
                            "72 Mb/s (2,5 GHz)",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Operadora:",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 17,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Text(
                            "----------",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "Localização: ",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 17,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Text(
                            "Luanda, Viana",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70,
                  ),
                  child: Container(
                    color: const Color.fromRGBO(255, 255, 255, 0.070),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 60,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "WI-FI Da Padaria",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                            bottom: 25,
                          ),
                          child: Text(
                            online ? "Está conectado" : "Está desconectado",
                            style: online
                                ? const TextStyle(
                                    color: Color(0xFF4CCF71),
                                    fontSize: 17,
                                    fontFamily: "Poppins",
                                  )
                                : const TextStyle(
                                    color: Colors.white30,
                                    fontSize: 17,
                                    fontFamily: "Poppins",
                                  ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: const Duration(seconds: 3),
                          curve: Curves.fastOutSlowIn,
                          padding: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF676767),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: online
                              ? Row(
                                  children: [
                                    Expanded(
                                      child: buildCustomText(online),
                                    ),
                                    Expanded(
                                      child: buildElevatedButton(),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Expanded(
                                      child: buildElevatedButton(),
                                    ),
                                    Expanded(
                                      child: buildCustomText(online),
                                    ),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        ),
        backgroundColor: Color(online ? 0xFF1DAA44 : 0xFF808080),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {
        setState(() {
          online = !online;
        });
      },
      child: Image.asset(
        "assets/images/quill_off.png",
      ),
    );
  }

  Widget buildCustomText(bool online) {
    return Text(
      !online ? "Conectar" : "desconectar",
      textAlign: TextAlign.center,
      style: !online
          ? const TextStyle(
              color: Color(0xFF4CCF71),
              fontSize: 17,
              fontFamily: "Poppins",
            )
          : const TextStyle(
              color: Colors.white30,
              fontSize: 17,
              fontFamily: "Poppins",
            ),
    );
  }
}
