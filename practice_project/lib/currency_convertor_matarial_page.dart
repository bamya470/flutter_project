import 'package:flutter/material.dart';



class CurrencyConvertorMatarialPage extends StatelessWidget {
  
  const CurrencyConvertorMatarialPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    final border= OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                );
  return Scaffold(
    backgroundColor: Colors.blueGrey,
        body: Center( 
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('0', 
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            ),
            
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder:border,
                  focusedBorder:border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true
                  ),
                
              ),
            ),

            TextButton(
                onPressed: () {
                debugPrint('Button clicked');
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.black),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                  ),
                ),
                    child: const Text('Convert', style: TextStyle(color: Colors.white)),
                ),

        ],
                ),
        ),
    );  
  }
}