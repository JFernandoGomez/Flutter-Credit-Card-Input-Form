import 'package:flutter/material.dart';
import 'package:flutter_credit_card/provider/card_cvv_provider.dart';
import 'package:flutter_credit_card/provider/card_name_provider.dart';
import 'package:flutter_credit_card/provider/card_number_provider.dart';
import 'package:flutter_credit_card/provider/card_valid_provider.dart';
import 'package:flutter_credit_card/provider/state_provider.dart';

import 'package:flutter_credit_card/screens/MainScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CardNumberProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CardNameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CardValidProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CardCVVProvider(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
