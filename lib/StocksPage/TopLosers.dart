import 'package:flutter/material.dart';
import 'package:groww/StocksPage/StockChart/StockCandlesUi.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';

import '../ReusableWidgets/StockDisplayWidget.dart';
import '../provider/StockDetailsProvider.dart';

class LosersWidget extends StatefulWidget {
  const LosersWidget({super.key});

  @override
  State<LosersWidget> createState() => _LosersWidgetState();
}

class _LosersWidgetState extends State<LosersWidget> {
  @override
  Widget build(BuildContext context) {
    final LoserProvider = Provider.of<StockDetailsNotifier>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: LoserProvider.stocksInNews.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).push(
              PageAnimationTransition(
                page: StockDetailsUI(
                    Stockdetialui: LoserProvider.loserStock[index]),
                pageAnimationType: RightToLeftTransition(),
              ),
            ),
            child: StockDisplayCard(
              stockmodal: LoserProvider.loserStock[index],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
