import 'package:flutter/material.dart';
import 'package:groww/StocksPage/StockChart/StockCandlesUi.dart';
import 'package:provider/provider.dart';
import '../ReusableWidgets/StockDisplayWidget.dart';
import '../provider/StockDetailsProvider.dart';

class GainersWidget extends StatefulWidget {
  const GainersWidget({super.key});

  @override
  State<GainersWidget> createState() => _GainersWidgetState();
}

class _GainersWidgetState extends State<GainersWidget> {
  @override
  Widget build(BuildContext context) {
    final TopGainerProvider = Provider.of<StockDetailsNotifier>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20,
          );
        },
        itemCount: TopGainerProvider.stocksInNews.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => StockDetailsUI(
                  Stockdetialui: TopGainerProvider.gainerStocks[index]),
            )),
            child: StockDisplayCard(
                stockmodal: TopGainerProvider.gainerStocks[index]),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
