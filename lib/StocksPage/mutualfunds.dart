import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/MutualFunds/sipCalculator.dart';
import 'package:provider/provider.dart';

import '../MutualFunds/SystematicInvestmentPlan.dart';
import '../MutualFunds/popularFunds.dart';
import '../ReusableWidgets/Searchbar.dart';
import '../provider/MutualFundsProvider.dart';

class MutualFundsView extends StatefulWidget {
  const MutualFundsView({super.key});

  @override
  State<MutualFundsView> createState() => _MutualFundsViewState();
}

class _MutualFundsViewState extends State<MutualFundsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.1,
            collapsedHeight: MediaQuery.of(context).size.height * 0.12,
            elevation: 0,
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              // color: Colors.amber,
              child: Column(
                children: [
                  SearchbarCard(),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return Column(
                children: [
                  ///add Mutual Funds Childrens here...
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Text(
                          "Popular Funds",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: PopularFunds(),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SipCalculator(),
                    )),
                    child: Text("SIP Calculator"),
                  )
                ],
              );
            },
          )),
        ],
      )),
    );
  }
}
// PopularFunds
