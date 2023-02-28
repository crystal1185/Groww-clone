import 'package:flutter/material.dart';

import 'StockMenuTop.dart';

class StockDetailsUI extends StatefulWidget {
  const StockDetailsUI({super.key});

  @override
  State<StockDetailsUI> createState() => _StockDetailsUIState();
}

class _StockDetailsUIState extends State<StockDetailsUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              /// Place the stock image
              StockDetails(),

              /// place the stock price
              /// place the close time and value.
              /// place the candlestick chart value.
              /// tab bar .
            ],
          )
        ],
      ),
    );
  }
}
