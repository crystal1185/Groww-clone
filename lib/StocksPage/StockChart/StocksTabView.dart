import 'package:flutter/material.dart';
import 'package:groww/navigations/tabbar.dart';

import 'OverviewTab/Events.dart';
import 'OverviewTab/FuturesOptions.dart';
import 'newspage.dart';
import 'overviewtab.dart';

class StocksTabView extends StatefulWidget {
  late TabController _tabController;
  StocksTabView({super.key});

  @override
  State<StocksTabView> createState() => _StocksTabViewState();
}

class _StocksTabViewState extends State<StocksTabView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  List<double> height = [1000, 500, 500, 400];
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(
      () {
        setState(
          () {
            index = _tabController.index;
          },
        );
      },
    );
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        children: [
          // tabbar height
          Container(
            // color: Colors.amber,
            height: 45,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: "Overview",
                ),
                Tab(
                  text: "News",
                ),
                Tab(
                  text: "Events",
                ),
                Tab(
                  text: "F&O",
                ),
              ],
            ),
          ),

          Container(
            height: height[index],
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Column(
                  children: [
                    OverviewTab(),
                  ],
                ),
                // second tab bar
                Column(
                  children: [
                    StockNewsPage(),
                  ],
                ),

                // third tab bar
                Column(
                  children: [
                    StockEvents(),
                  ],
                ),

                // fourth tab bar
                Column(
                  children: [
                    FuturesandOptions(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
