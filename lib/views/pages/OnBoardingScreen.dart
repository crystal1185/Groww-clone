import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groww/views/widgets/textcontrollers.dart';

class OnboardingUI extends StatefulWidget {
  const OnboardingUI({super.key});

  @override
  State<OnboardingUI> createState() => _OnboardingUIState();
}

class _OnboardingUIState extends State<OnboardingUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              // Logo
              Container(
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height * 0.2,

                margin: const EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/splashScreen.png'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Groww",
                      style: GoogleFonts.prompt(
                        fontSize: 24,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),

              /// text form field
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InputTextController(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),

              /// Buttons
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('NEXT'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
