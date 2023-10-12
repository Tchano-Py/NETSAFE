// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netsafe/Components/AppBarHome.dart';
import 'package:netsafe/Components/CardWiFi.dart';

class IndexHome extends StatefulWidget {
  const IndexHome({super.key});

  @override
  State<IndexHome> createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  List<String> items = [
    'WI-FI Da Padaria',
    'Cliníca Do Amigo',
    'Família João',
    'Zap Fibra',
    'Net Casa',
    'AfriNet Home',
    'SANSUNG NET',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const AppBarHome(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 75,
                      ),
                      child: Text(
                        "Net \narmazenada",
                        style: TextStyle(
                          color: Colors.white,
                          height: 1,
                          fontSize: 34,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 75,
                      ),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 15,
                            ),
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                context,
                                "/autenticar",
                              ),
                              child: CardWiFi(
                                wifi: items[index],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
