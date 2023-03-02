import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class LowHigh extends StatefulWidget {
  const LowHigh({super.key});

  @override
  State<LowHigh> createState() => _LowHighState();
}

class _LowHighState extends State<LowHigh> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              // todays low
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("52 Week Low",
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.grey)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("80.80",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.45),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("52 Week High",
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.grey)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("138.67",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          height: 4,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color(0xFF66c3ac),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2),
          child: Row(
            children: [
              Image.asset(
                "assets/triangle.png",
                height: 14,
                width: 14,
              )
            ],
          ),
        )
      ],
    );
  }
}
