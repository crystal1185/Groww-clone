import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/StocksPage/StockChart/OverviewTab/progressindicator.dart';

import 'OverviewTab/ExpertsRatings.dart';
import 'OverviewTab/Financials.dart';
import 'OverviewTab/Fundamentals.dart';
import 'OverviewTab/LowHigh.dart';
import 'OverviewTab/Revenue.dart';
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
              top: MediaQuery.of(context).size.height * 0.04),
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
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.info_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        ProgressSlider(),
        const SizedBox(
          height: 30,
        ),
        LowHigh(),
        const SizedBox(
          height: 30,
        ),
        StockPerfomanceDetails(),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          color: Color.fromARGB(255, 91, 91, 91),
        ),
        const SizedBox(
          height: 30,
        ),
        ExpertRatings(),
        const SizedBox(
          height: 30,
        ),
        const Divider(
          color: Color.fromARGB(255, 91, 91, 91),
        ),

        /// Fundamentals Data
        FundamentalsUI(),
        const SizedBox(
          height: 30,
        ),

        const Divider(
          color: Color.fromARGB(255, 91, 91, 91),
        ),
        FinancialsDetails(),
      ],
    );
  }
}
