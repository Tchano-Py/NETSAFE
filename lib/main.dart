import 'package:flutter/material.dart';
import 'package:netsafe/pages/Autenticar_page/IndexAutenticar.dart';
import 'package:netsafe/pages/Home_page/IndexHome.dart';
import 'package:netsafe/pages/Splash_page/indexSplash.dart';
import 'package:netsafe/pages/plano_page/indexPlano.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // BY: Tchano Py[Cristiano Fula Mariano]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netsafe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexSplash(),
        '/planos': (context) => const IndexPlano(),
        '/home': (context) => const IndexHome(),
        '/autenticar': (context) => const IndexAutenticar(), 
      }, 
    );
  }
}