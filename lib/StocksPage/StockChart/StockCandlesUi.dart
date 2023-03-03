import 'package:flutter/material.dart';
import 'package:groww/provider/StockDetailsProvider.dart';
import 'package:provider/provider.dart';

import '../../models/StockCardModel.dart';
import '../stocks.dart';
import 'CandlestickUI.dart';
import 'StockMenuTop.dart';
import 'StocksTabView.dart';

class StockDetailsUI extends StatefulWidget {
  StockDetailsModel Stockdetialui;
  StockDetailsUI({required this.Stockdetialui, super.key});

  @override
  State<StockDetailsUI> createState() => _StockDetailsUIState();
}

class _StockDetailsUIState extends State<StockDetailsUI> {
  @override
  Widget build(BuildContext context) {
    final StockPageinfo = Provider.of<StockDetailsNotifier>(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                  top: MediaQuery.of(context).size.height * 0.01,
                ),
                child: InkWell(
                  onTap: () => Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => StocksPageView()),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),

              /// Place the stock image
              //todo:work here.
              StockDetails(stockDetailsModel: widget.Stockdetialui),
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
