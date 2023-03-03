import 'package:flutter/material.dart';

import '../StocksPage/StockChart/StockMenuTop.dart';
import '../models/StockCardModel.dart';

class Stocks {
  //String? brandLogoUrl;
}

class StockDetailsNotifier with ChangeNotifier {
  List<StockDetailsModel> mostboughtcards = [
    StockDetailsModel(
      BrandLogo: "assets/zomato.png",
      BrandName: "Zomato",
      Cost: "₹ 54.95",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/Ambuja_logo.png",
      BrandName: "Ambuja Cements",
      Cost: "₹ 336.90",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/Yes_Bank_logo.png",
      BrandName: "Yes Bank",
      Cost: "₹ 16.40",
      PriceAction: "+2.00 (0.61%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/tatasteel.jpg",
      BrandName: "Tata Steel",
      Cost: "₹ 112.05",
      PriceAction: "+0.90 (0.81%)",
    ),
  ];

  List<StockDetailsModel> stocksInNews = [
    StockDetailsModel(
      BrandLogo: "assets/GAIL.png",
      BrandName: "Gail",
      Cost: "₹ 54.95",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/icici.png",
      BrandName: "ICICI",
      Cost: "₹ 336.90",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/sbi.png",
      BrandName: "SBI ",
      Cost: "₹ 16.40",
      PriceAction: "+2.00 (0.61%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/hdfc.png",
      BrandName: "HDFC",
      Cost: "₹ 112.05",
      PriceAction: "+0.90 (0.81%)",
    ),
  ];

  List<StockDetailsModel> gainerStocks = [
    StockDetailsModel(
      BrandLogo: "assets/kotak.png",
      BrandName: "Kotak Mahindra Bank",
      Cost: "₹ 1,741.00",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/paytm.png",
      BrandName: "Paytm - One97 Communications Ltd",
      Cost: "₹ 336.90",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/sbi.png",
      BrandName: "SBI ",
      Cost: "₹ 16.40",
      PriceAction: "+2.00 (0.61%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/hdfc.png",
      BrandName: "HDFC",
      Cost: "₹ 112.05",
      PriceAction: "+0.90 (0.81%)",
    ),
  ];
  List<StockDetailsModel> loserStock = [
    StockDetailsModel(
      BrandLogo: "assets/ultraTechCement.png",
      BrandName: "Ultratech Cement",
      Cost: "₹ 7,230",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/Cipla.png",
      BrandName: "Cipla",
      Cost: "₹ 884.90",
      PriceAction: "+2.00 (3.78%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/Nykaa_Logo.png",
      BrandName: "Nykaa -FSN E-Commerce Ventures Nykaa Ltd. ",
      Cost: "₹ 146.90",
      PriceAction: "+2.00 (0.61%)",
    ),
    StockDetailsModel(
      BrandLogo: "assets/icol.png",
      BrandName: "Indian Oil",
      Cost: "₹ 77.85",
      PriceAction: "+0.90 (0.81%)",
    ),
  ];
}
