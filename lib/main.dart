
import 'package:flutter/material.dart';
import 'package:my_app/Pages/into_page.dart';
import 'package:my_app/Pages/menu_page.dart';
import 'package:my_app/models/shop.dart';
import 'package:provider/provider.dart';

import 'Pages/cart_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage':(context) => const CartPage(),
      },
    );
  }
}
