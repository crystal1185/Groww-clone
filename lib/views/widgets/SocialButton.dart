import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWithGoogle extends StatefulWidget {
  const SignInWithGoogle({super.key});

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: SizedBox(
          width: 300,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 22,
                width: 22,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/281/281764.png"),
              ),
              SizedBox(
                width: 12,
              ),
              Text("Continue with Google",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}
