import 'package:flutter/material.dart';
import 'package:flutter_bilioniar/add_money_balance.dart';
import 'package:flutter_bilioniar/balance_view.dart';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(myApp());
}

// ignore: camel_case_types
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

// ignore: camel_case_types
class _myAppState extends State<myApp> {
  double balance = 0;

  void afunction() async {
    setState(() {
      balance = balance + 500;
    });
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save an double value to 'decimal' key.
    await prefs.setDouble('balance', balance);

    print(balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Billionaire app!")),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BalanceView(balance: balance),
              AddMoneyBalance(afunctionFunction: afunction),
              // Text("Balance part"),
            ],
          ),
        ),
      ),
    );
  }
}
