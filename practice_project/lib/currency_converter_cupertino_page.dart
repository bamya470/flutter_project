import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

  double result = 0.0;
  final TextEditingController value = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(value.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Convertor'),
        backgroundColor: CupertinoColors.systemGrey3,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: CupertinoColors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoTextField(
                controller: value,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                    color: CupertinoColors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0), 
                ), 
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                onPressed:convert,
                color: CupertinoColors.black,
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: CupertinoColors.white,
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}