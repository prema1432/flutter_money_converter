import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/currency_converter_cupertino.dart';
import 'package:my_app/pages/currency_converter_material_page.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyCupertinoAPP());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoAPP extends StatelessWidget {
  const MyCupertinoAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CurrencyonverterCupertinoPage());
  }
}
