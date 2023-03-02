import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StockDetails extends StatelessWidget {
  const StockDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image

          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.08),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image.asset("assets/Yes_Bank_logo.png"),
                ),
              ],
            ),
          ),

          /// This Text is for StockBrand Name;
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Text(
              "Tata Steel",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Text(
              "₹106.10",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Row(
              children: [
                Text("-1.30(1.23)",
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.red)),
                SizedBox(
                  width: 5,
                ),
                Text("1D",
                    style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
