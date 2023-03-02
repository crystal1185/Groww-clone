import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StockPerfomanceDetails extends StatefulWidget {
  const StockPerfomanceDetails({super.key});

  @override
  State<StockPerfomanceDetails> createState() => _StockPerfomanceDetailsState();
}

/// Performance - Stock Details : open ,prev.close , volume ,Lower Circuit , Upper Circusit.
class _StockPerfomanceDetailsState extends State<StockPerfomanceDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      // color: Colors.amber,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Open",
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "104.80",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Prev. Close",
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.grey)),
                    Text(
                      "103.95",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Volume",
                        style: GoogleFonts.roboto(
                            fontSize: 12, color: Colors.grey)),
                    Text(
                      "6,26,08,580",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lower Circuit",
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "104.80",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upper Circuit",
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    Text(
                      "104.80",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
