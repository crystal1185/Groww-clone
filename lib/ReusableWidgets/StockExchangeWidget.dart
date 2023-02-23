import 'package:flutter/material.dart';

class StocksExchangeTitleCard extends StatefulWidget {
  ///constructor for the Re-Usable Stock exchange title card widget.
  // String? Name;
  // String? volume;
  // String? percentage;
  // StocksExchangeTitleCard(
  //     {super.key,
  //     required this.Name,
  // required this.volume,
  //     required this.percentage});

  @override
  State<StocksExchangeTitleCard> createState() =>
      _StocksExchangeTitleCardState();
}

class _StocksExchangeTitleCardState extends State<StocksExchangeTitleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 30,
        width: 180,
        child: Padding(
          padding: EdgeInsets.only(left: 15, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NIFTEY 50",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "17,770.90",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "-85.60 (0.48)",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}
