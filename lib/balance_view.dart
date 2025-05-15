import 'package:flutter/material.dart';
import 'package:flutter_bilioniar/dummy.child.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class BalanceView extends StatelessWidget {
  BalanceView({super.key, required this.balance});
  double balance;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bank Balances:"),
          SizedBox(height: 20),
          Text(
            '\$ ${NumberFormat.simpleCurrency(name: '').format(balance)}',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          DummyChild(name: 'siri'),
        ],
      ),
    );
  }
}
