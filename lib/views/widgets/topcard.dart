import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  const TopCard({super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 10,
        width: 150,
        decoration:
            BoxDecoration(shape: BoxShape.rectangle, color: Colors.amberAccent),
      ),
    );
  }
}
