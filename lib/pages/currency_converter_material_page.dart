import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
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
    // double result = 0;
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 10.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(50),
    );
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('My Money Converter'),
        centerTitle: true,
      ),
      body: Center(
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
                  color: Colors.white,
                ),
              ),
            ),
            // padding
            // container
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.lightBlue,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
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
              child: ElevatedButton(
                onPressed: convert,
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Icon(Icons.money),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurrencyConverterMaterialPagee extends StatelessWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 10.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(50),
    );

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('My Money Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.yellow,
              child: Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // padding
            // container
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.lightBlue,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
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
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  build(context);
                  if (kDebugMode) {
                    print(textEditingController.text);
                    print(double.parse(textEditingController.text) * 81);
                  }
                  debugPrint('button clicked');
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.black),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Icon(Icons.money),
              ),
            )
          ],
        ),
      ),
    );
  }
}
