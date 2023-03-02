import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/StocksPage/StockChart/OverviewTab/progressindicator.dart';

import 'OverviewTab/ExpertsRatings.dart';
import 'OverviewTab/LowHigh.dart';
import 'OverviewTab/stockdetial.dart';

class OverviewTab extends StatefulWidget {
  const OverviewTab({super.key});

  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// performance
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Performance",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.info_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ProgressSlider(),
        SizedBox(
          height: 30,
        ),
        LowHigh(),
        SizedBox(
          height: 30,
        ),
        StockPerfomanceDetails(),
        SizedBox(
          height: 30,
        ),
        Divider(
          color: Color.fromARGB(255, 91, 91, 91),
        ),
        SizedBox(
          height: 30,
        ),
        ExpertRatings(),
        SizedBox(
          height: 30,
        ),
        Divider(
          color: Color.fromARGB(255, 91, 91, 91),
        ),
      ],
    );
  }
}
