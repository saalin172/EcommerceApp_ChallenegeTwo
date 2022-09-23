import 'package:challenge_tw/screens/screns.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceUI());
}

class EcommerceUI extends StatelessWidget {
  const EcommerceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce UI',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
