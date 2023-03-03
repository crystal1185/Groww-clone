import 'package:flutter/material.dart';
import 'package:groww/StocksPage/StockChart/StockCandlesUi.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:provider/provider.dart';

import '../ReusableWidgets/StockDisplayWidget.dart';
import '../provider/StockDetailsProvider.dart';

class StocksInNews extends StatefulWidget {
  const StocksInNews({super.key});

  @override
  State<StocksInNews> createState() => _StocksInNewsState();
}

class _StocksInNewsState extends State<StocksInNews> {
  @override
  Widget build(BuildContext context) {
    final stocksInNewsProvider = Provider.of<StockDetailsNotifier>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: stocksInNewsProvider.stocksInNews.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).push(PageAnimationTransition(
                page: StockDetailsUI(
                    Stockdetialui: stocksInNewsProvider.stocksInNews[index]),
                pageAnimationType: RightToLeftTransition())),
            child: StockDisplayCard(
              stockmodal: stocksInNewsProvider.stocksInNews[index],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
