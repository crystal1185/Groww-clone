import 'package:flutter/material.dart';

class InitialAnimation extends StatefulWidget {
  const InitialAnimation({super.key});

  @override
  State<InitialAnimation> createState() => _InitialAnimationState();
}

class _InitialAnimationState extends State<InitialAnimation> {
  bool selected = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          selected = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AnimatedPositioned(
          top: 0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          width: selected ? 0 : 500,
          child: Container(
            height: 10,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
