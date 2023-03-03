import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/StocksPage/StockChart/OverviewTab/profitchart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Revenue.dart';
import 'networthchart.dart';

class FinancialsDetails extends StatefulWidget {
  late TabController _tabController;

  FinancialsDetails({super.key});

  @override
  State<FinancialsDetails> createState() => _FinancialsDetailsState();
}

/// To Create a financial tabbar
class _FinancialsDetailsState extends State<FinancialsDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  List<double> height = [400, 400, 400];
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
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
      length: 3,
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
                  text: "Revenue",
                ),
                Tab(
                  text: "Profit",
                ),
                Tab(
                  text: "Net Worth",
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.amber,
            height: height[index],
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.08,
                        top: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "All values are in Rs.Cr",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 202, 202, 202)),
                          ),
                        ],
                      ),
                    ),
                    RevenueChart(),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                //second tab bar
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.08,
                        top: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "All values are in Rs.Cr",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 202, 202, 202)),
                          ),
                        ],
                      ),
                    ),
                    ProfitChart(),
                  ],
                ),
                // third tab bar
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.08,
                        top: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "All values are in Rs.Cr",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 202, 202, 202)),
                          ),
                        ],
                      ),
                    ),
                    NetworkChart(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
