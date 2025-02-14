import 'package:flutter/material.dart';
import 'package:practice_project/currency_convertor_matarial_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
    home: CurrencyConvertorMatarialPage(),
   );
  }
}