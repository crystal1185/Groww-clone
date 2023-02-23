import 'package:flutter/material.dart';
import 'package:groww/StocksPage/mutualfunds.dart';
import 'package:groww/StocksPage/stocks.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  int _selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedtab,
          onTap: (index) {
            setState(() {
              this._selectedtab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.candlestick_chart_sharp),
              label: "Stocks",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_rounded),
              label: "Mutual Funds",
            ),
          ]),
      body: Stack(
        children: [
          renderView(0, StocksPageView()),
          renderView(1, MutualFundsView()),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedtab != tabIndex,
      child: Opacity(
        opacity: _selectedtab == tabIndex ? 1.0 : 0.0,
        child: view,
      ),
    );
  }
}
