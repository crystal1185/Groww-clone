import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/views/widgets/topcard.dart';

class StocksUI extends StatefulWidget {
  const StocksUI({super.key});

  @override
  State<StocksUI> createState() => _StocksUIState();
}

class _StocksUIState extends State<StocksUI> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              color: Colors.white54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/splashScreen.png'),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.search,
                    size: 18,
                  ),
                  Text(
                    "Search Groww",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 60,
            width: 10,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard(),
                SizedBox(
                  width: 10,
                ),
                buildCard(),
                SizedBox(
                  width: 10,
                ),
                buildCard(),
                SizedBox(
                  width: 10,
                ),
                buildCard(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          //chips
          Container(
            margin: EdgeInsets.all(10.0),
            height: 30,
            width: 10,
            // color: Colors.red,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BuildChips(),
                SizedBox(
                  width: 10,
                ),
                BuildChips(),
                SizedBox(
                  width: 10,
                ),
                BuildChips(),
                SizedBox(
                  width: 10,
                ),
                BuildChips(),
                SizedBox(
                  width: 10,
                ),
                BuildChips(),
                SizedBox(
                  width: 10,
                ),
                BuildChips(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          /// Balance Available for stocks
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Card(
              color: Colors.white,
              child: SizedBox(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Balance Available for Stocks",
                        style: GoogleFonts.roboto(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "₹0.00",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 75, 72, 72)),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Card(
                              color: Color(0xff00D8A5),
                              child: SizedBox(
                                height: 30,
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'ADD MONEY',
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Most Bought on Groww",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )),

          Container(
            margin: EdgeInsets.all(10.0),
            height: 140,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(child: StockWidgets()),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
              ],
            ),
          ),

          ///top gainers
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Top Gainers",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )),

          Container(
            margin: EdgeInsets.all(10.0),
            height: 140,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
              ],
            ),
          ),

          /// Top Losers
          ///top gainers
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Top Losers",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )),

          Container(
            margin: EdgeInsets.all(10.0),
            height: 140,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
              ],
            ),
          ),

          ///top gainers
          Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                "Stock in news",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )),

          Container(
            margin: EdgeInsets.all(10.0),
            height: 140,
            width: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white10,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
                SizedBox(
                  width: 20,
                ),
                StockWidgets(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCard() => Container(
      width: 150,
      height: 10,
      color: Colors.blueGrey,
    );

Widget BuildChips() => Container(
      width: 100,
      height: 10,
      color: Colors.blueGrey,
    );

Widget StockWidgets() => Container(
      width: 120,
      height: 50,
      color: Colors.blueGrey,
    );
