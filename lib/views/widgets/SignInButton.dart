import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailButton extends StatefulWidget {
  const EmailButton({super.key});

  @override
  State<EmailButton> createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text('Use Other Email ID',
          style: GoogleFonts.roboto(
              fontSize: 14,
              color: Color(0xFF6BD19D),
              fontWeight: FontWeight.w600)),
    );
  }
}
