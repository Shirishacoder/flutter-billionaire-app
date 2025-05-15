import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddMoneyBalance extends StatelessWidget {
  void Function() afunctionFunction;
  AddMoneyBalance({super.key, required this.afunctionFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pinkAccent[400],
          minimumSize: Size(double.infinity, 0),
        ),
        onPressed: afunctionFunction,
        child: Text("add balances"),
      ),
    );
  }
}
