import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../MutualFunds/popularFunds.dart';
import '../ReusableWidgets/Searchbar.dart';

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
            collapsedHeight: MediaQuery.of(context).size.height * 0.15,
            elevation: 0,
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              color: Colors.amber,
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
                  PopularFunds(),
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
