import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project/currency_converter_cupertino_page.dart';
import 'package:practice_project/currency_convertor_matarial_page.dart';

void main() {
  runApp(const MyCupertinoApp());
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

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
    home: CurrencyConverterCupertinoPage(),
   );
  }
}