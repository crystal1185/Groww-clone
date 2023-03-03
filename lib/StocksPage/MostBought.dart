import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../ReusableWidgets/StockDisplayWidget.dart';
import '../provider/StockDetailsProvider.dart';
import 'StockChart/StockCandlesUi.dart';

/**
 * This is the most bought page .
 * 
 * using grid view 
 */

class MostBoughtWidget extends StatefulWidget {
  const MostBoughtWidget({super.key});

  @override
  State<MostBoughtWidget> createState() => _MostBoughtWidgetState();
}

class _MostBoughtWidgetState extends State<MostBoughtWidget> {
  @override
  Widget build(BuildContext context) {
    final stockdetailsProvider = Provider.of<StockDetailsNotifier>(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Most Bought on Groww",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2.6 / 2.6,
            children: [
              /// to display the most bought
              // ...mostboughtcards.toList(growable: true),
              ...List.generate(stockdetailsProvider.mostboughtcards.length,
                  (index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StockDetailsUI(
                        Stockdetialui:
                            stockdetailsProvider.mostboughtcards[index]),
                  )),
                  child: StockDisplayCard(
                    stockmodal: stockdetailsProvider.mostboughtcards[index],
                  ),
                  //stockdetailsProvider.mostboughtcards[index]
                );
              })
            ],
          ),
        ),
      ],
    );
  }
}
