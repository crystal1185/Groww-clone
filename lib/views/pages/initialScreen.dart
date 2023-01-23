import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';
import 'package:groww/views/widgets/SocialButton.dart';
import 'package:groww/views/widgets/SignInButton.dart';

class initialScreen extends StatefulWidget {
  const initialScreen({super.key});

  @override
  State<initialScreen> createState() => _initialScreenState();
}

/// This Widget Tree loads after splash screen module
class _initialScreenState extends State<initialScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Container used for Grow Logo and Brand Name
          Container(
            // color: Colors.amber,
            height: 100,
            margin: const EdgeInsets.only(top: 160),
            padding: const EdgeInsets.only(left: 30),
            child: Row(
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
          const SizedBox(
            height: 50,
          ),

          /// Container for Intro-Text
          Container(
            // color: Colors.amber,
            height: 135,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Simple",
                  style: GoogleFonts.roboto(
                      fontSize: 48,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey[800]),
                ),
                Text(
                  "investing.",
                  style: GoogleFonts.roboto(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[800]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          /// This container widget used for TERMS AND CONDITIONS
          Container(
            height: 50,
            // color: Colors.yellow,
            margin: EdgeInsets.only(left: 40, right: 40, top: 120),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "By proceeding, I accept",
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Groww's", style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          width: 3,
                        ),
                        Text("T&C ",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Color(0xFF6BD19D),
                                fontWeight: FontWeight.w500)),
                        const Text(","),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Privacy Policy",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Color(0xFF6BD19D),
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text("&",
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                            )),
                        Text("Tariff Rates",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: Color(0xFF6BD19D),
                                fontWeight: FontWeight.w500)),
                      ],
                    )
                  ]),
            ),
          ),

          /// Social Login Button
          SignInWithGoogle(),
          SizedBox(
            height: 10,
          ),
          EmailButton(),
        ],
      ),
    );
  }
}
