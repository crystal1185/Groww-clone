import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpertRatings extends StatelessWidget {
  const ExpertRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.08),
                  child: Text(
                    "Experts rating",
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.info_rounded,
                size: 16,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08),
                child: Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 0, 105, 54)),
                  child: Center(
                      child: Text(
                    "74%",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 255, 195)),
                  )),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// buy row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Buy"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.065,
                        ),
                        Text("74%"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Container(
                          height: 8,
                          width: 80,
                          color: Color.fromARGB(255, 131, 255, 195),
                        )
                      ],
                    ),

                    /// hold row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Hold"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text("19%"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Container(
                          height: 8,
                          width: 26,
                          color: Color.fromARGB(255, 91, 91, 91),
                        )
                      ],
                    ),

                    /// sell row
                    Row(
                      children: [
                        Text("Sell"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text("7%"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Container(
                          height: 8,
                          width: 17,
                          color: Color.fromARGB(255, 91, 91, 91),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          ///aggregated row
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
            child: Row(
              children: [
                Text(
                  "Aggregated by Refinitiv from 27 analysis",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.info_rounded,
                  size: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
