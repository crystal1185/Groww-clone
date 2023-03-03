import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FundamentalsUI extends StatefulWidget {
  const FundamentalsUI({super.key});

  @override
  State<FundamentalsUI> createState() => _FundamentalsUIState();
}

class _FundamentalsUIState extends State<FundamentalsUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.02),
          child: Row(
            children: [
              Text(
                "Fundamentals",
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const Icon(
                Icons.info_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),

        /// Fundamentals table.
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.02),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mkt Cap",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("₹1,03,333Cr"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("P/E Ratio(TTM)",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("7.18"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("P/B Ratio",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("1.58"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Industry P/E",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("11.87"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Debt to Equity",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("1.09"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ROE",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("29.46%"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("EPS(TTM)",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("38.78"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Div Yield",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("29.07%"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Book Value",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("146.13"),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Face Value",
                            style: GoogleFonts.roboto(color: Colors.grey)),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text("1"),
                      ],
                    ),
                  ],
                ),
              ),
              // Instructions.
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.02),
          child: Row(
            children: [
              Text(
                "Understand Fundamentals",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const Icon(
                Icons.info_rounded,
                size: 14,
                color: Color.fromARGB(255, 231, 230, 230),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
