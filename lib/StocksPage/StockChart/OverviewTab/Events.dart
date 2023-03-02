import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StockEvents extends StatefulWidget {
  const StockEvents({super.key});

  @override
  State<StockEvents> createState() => _StockEventsState();
}

class _StockEventsState extends State<StockEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Board Meeting",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "20 Feb 23 - action date",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Meeting of the Board of Directors",
            style: GoogleFonts.roboto(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
