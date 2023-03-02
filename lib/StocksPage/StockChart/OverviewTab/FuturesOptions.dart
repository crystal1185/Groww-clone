import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FuturesandOptions extends StatefulWidget {
  const FuturesandOptions({super.key});

  @override
  State<FuturesandOptions> createState() => _FuturesandOptionsState();
}

class _FuturesandOptionsState extends State<FuturesandOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TATA STEEL 115 CALL",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "29 Mar 23",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
          Text(
            "TATA STEEL 110 PUT CALL",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "20 Mar 23",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(),
        ],
      ),
    );
  }
}
