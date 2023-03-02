import 'package:flutter/material.dart';

import 'CandlestickUI.dart';
import 'StockMenuTop.dart';
import 'StocksTabView.dart';

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
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              /// Place the stock image
              StockDetails(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CandleStickDetails(),
              SizedBox(
                height: 5,
              ),

              /// place the stock price
              /// place the close time and value.
              /// place the candlestick chart value.
              /// tab bar .
              StocksTabView(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 242, 95, 4)),
              onPressed: () {},
              child: Padding(
                padding:
                    EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                child: Text(
                  "SELL",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                  child: Text("BUY")),
            ),
          ],
        ),
      ),
    );
  }
}
