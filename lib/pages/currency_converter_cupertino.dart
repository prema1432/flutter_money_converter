import 'package:flutter/cupertino.dart';

class CurrencyonverterCupertinoPage extends StatefulWidget {
  const CurrencyonverterCupertinoPage({super.key});

  @override
  State<CurrencyonverterCupertinoPage> createState() =>
      _CurrencyonverterCupertinoPageState();
}

class _CurrencyonverterCupertinoPageState
    extends State<CurrencyonverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  // }
  void convert() {
    result = double.parse(textEditingController.text) * 88;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeGreen,
        middle: Text('My Money Converter'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              // color: Colors.yellow,
              child: Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
            ),
            // padding
            // container
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(10),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.systemRed,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // button

            //raised

            // appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
