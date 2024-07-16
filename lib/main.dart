import 'package:flutter/material.dart';
import 'package:pr_4_practice/screens/cartpage.dart';
import 'package:pr_4_practice/screens/categroypage.dart';
import 'package:pr_4_practice/screens/detailpage.dart';
import 'package:pr_4_practice/screens/homepage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'categorypage': (context) => const CategoryPage(),
        'detailpage': (context) => const DetailPage(),
        'cartpage': (context) => const CartPage(),
      },
    );
  }
}
