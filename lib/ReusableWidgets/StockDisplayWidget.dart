import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/provider/StockDetailsProvider.dart';
import 'package:provider/provider.dart';

import '../StocksPage/StockChart/StockCandlesUi.dart';
import '../models/StockCardModel.dart';

class StockDisplayCard extends StatelessWidget {
  StockDetailsModel stockmodal;
  StockDisplayCard({required this.stockmodal});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StockDetailsNotifier>(context);
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.42,
      // color: Colors.amber,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          border: Border.all(color: Color.fromARGB(255, 68, 68, 68))),

      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  color: Colors.white,
                  child: Image.asset(
                    // provider.mostboughtcards[index].BrandLogo.toString(),
                    stockmodal.BrandLogo.toString(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  stockmodal.BrandName.toString(),
                  // provider.mostboughtcards[index].BrandName.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  stockmodal.Cost.toString(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  stockmodal.PriceAction.toString(),
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
