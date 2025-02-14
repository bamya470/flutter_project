import 'package:flutter/material.dart';



class CurrencyConvertorMatarialPage extends StatelessWidget {
  
  const CurrencyConvertorMatarialPage({super.key});
  
  @override
  Widget build(BuildContext context) {
  return const Scaffold(
    backgroundColor: Colors.blueGrey,
        body: Center( 
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('0', 
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            ),
            
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Please enter the amount in USD',
                hintStyle: TextStyle(
                  color: Colors.white60,
                ),
              ),
            ),
        ],
                ),
        ),
    );  
  }
}