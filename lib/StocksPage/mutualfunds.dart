import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MutualFundsView extends StatefulWidget {
  const MutualFundsView({super.key});

  @override
  State<MutualFundsView> createState() => _MutualFundsViewState();
}

class _MutualFundsViewState extends State<MutualFundsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Mutual Funds View"),
      ),
    );
  }
}
