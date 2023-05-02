import 'package:carrito_compras/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _routes = {
    "/": (context) => const LoginPage(),
    //"/home": (context) =>  HomePage(_textoController.text),
  };
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrito de compras',
      initialRoute: "/",
      routes: _routes,
    );
  }
}
