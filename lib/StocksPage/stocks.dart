import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/StocksPage/StocksInNews.dart';
import 'package:groww/StocksPage/TopLosers.dart';

import '../ReusableWidgets/BalanceCard.dart';
import '../ReusableWidgets/Searchbar.dart';
import '../ReusableWidgets/StockDisplayWidget.dart';
import '../ReusableWidgets/StockExchangeWidget.dart';
import 'MostBought.dart';
import 'StockChart/StocksTabView.dart';
import 'TopGainers.dart';

class StocksPageView extends StatefulWidget {
  StocksPageView({super.key});
  final ScrollController s = ScrollController();
  @override
  State<StocksPageView> createState() => _StocksPageViewState();
}

class _StocksPageViewState extends State<StocksPageView> {
  List<List<String>> niftyValues = [
    ["NIFTY 50", "17,770"],
    ["BANK NIFTY", "41,282"],
    ["FINNIFTY", "18,428"],
    ["SENSEX", "60,431"]
  ];

  List<String> MainScreentab = [
    "Explore",
    "Holdings",
    "Postitions",
    "Orders",
    "Mathi's Watchlist",
    "Add WatchList"
  ];

  List<String> Stockprice = [
    " +0.50 (0.1%)",
    " -183.40 (0.58)",
    "-73.40(0.43%)",
    "-3.75 (0.08%)",
  ];

  List<Color> StockColors = [
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    int? _value = 0;
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.25,
            collapsedHeight: MediaQuery.of(context).size.height * 0.25,
            elevation: 0,
            floating: true,
            snap: true,
            // pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              child: Column(
                children: [
                  SearchbarCard(),
                  SizedBox(
                    height: 10,
                  ),

                  ///Container to load the niftey details
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    padding: EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: niftyValues.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 76, 76, 76))),
                          child: Container(
                            height: 40,
                            width: 180,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    niftyValues[index][0],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        niftyValues[index][1],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        // later use animation to change the text values and color.
                                        Stockprice[index],
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: StockColors[index]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        );
                        //return StocksExchangeTitleCard();
                      },
                    ),

                    /// choice chips
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: MainScreentab.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: ChoiceChip(
                            padding: EdgeInsets.all(5),
                            side: BorderSide(color: Colors.grey),
                            label: Text('${MainScreentab[index]}'),
                            selected: _value == index,
                            backgroundColor: Colors.transparent,
                            onSelected: (bool selected) {
                              setState(() {
                                _value = selected ? index : null;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return Container(
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      // Container for Balance Available for stocks.
                      BalanceCard(),
                      SizedBox(
                        height: 10,
                      ),

                      /// this widget displays the most bought stocks data on the Stocks page.
                      MostBoughtWidget(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.002,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Text(
                              "Gainers",
                              style: GoogleFonts.roboto(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: GainersWidget(),
                      ),

                      /// losers
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Text(
                              "Losers",
                              style: GoogleFonts.roboto(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: LosersWidget(),
                      ),

                      /// stocks in news
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Text(
                              "Stocks In News",
                              style: GoogleFonts.roboto(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: StocksInNews(),
                      ),

                      // StocksTabView(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
