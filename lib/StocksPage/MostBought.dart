import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ReusableWidgets/StockDisplayWidget.dart';
import 'package:groww/models/StockCardModel.dart';
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
  List<StockCardModel> StockDetails = [
    StockCardModel(
      BrandLogo: "assets/zomato.png",
      BrandName: "Zomato",
      Cost: "55.05",
      PriceAction: "+2.10(3.97%)",
    ),
    StockCardModel(
      BrandLogo: "assets/Ambuja_logo.png",
      BrandName: "Ambuja Cements",
      Cost: "336.00",
      PriceAction: "+0.85(0.34%)",
    ),
    StockCardModel(
      BrandLogo: "assets/zomato.png",
      BrandName: "Zomato",
      Cost: "55.05",
      PriceAction: "+2.10(3.97%)",
    ),
    StockCardModel(
      BrandLogo: "assets/Yes_Bank_logo.png",
      BrandName: "Yes Bank",
      Cost: "16.35",
      PriceAction: "+0.60(0.58%)",
    ),
    StockCardModel(
      BrandLogo: "assets/tatasteel.png",
      BrandName: "Tata Steel",
      Cost: "111.75",
      PriceAction: "+0.23(0.58%)",
    ),
  ];
  @override
  Widget build(BuildContext context) {
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
              StockDisplayCard(
                BrandLogo: "assets/zomato.png",
                BrandName: "Zomato",
                Cost: "₹ 54.95",
                PriceAction: "+2.00 (3.78%)",
              ),
              StockDisplayCard(
                BrandLogo: "assets/Ambuja_logo.png",
                BrandName: "Ambuja Cements",
                Cost: "₹ 336.90",
                PriceAction: "+2.00 (3.78%)",
              ),
              StockDisplayCard(
                BrandLogo: "assets/Yes_Bank_logo.png",
                BrandName: "Yes Bank",
                Cost: "₹ 16.40",
                PriceAction: "+2.00 (0.61%)",
              ),
              StockDisplayCard(
                BrandLogo: "assets/tatasteel.jpg",
                BrandName: "Tata Steel",
                Cost: "₹ 112.05",
                PriceAction: "+0.90 (0.81%)",
              ),
            ],
          ),
        )
      ],
    );
  }
}
