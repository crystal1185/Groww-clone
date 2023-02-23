import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'initialScreen.dart';

/// need to change this as custom model class for the kyc details filling
class CustomChipsTesting extends StatefulWidget {
  const CustomChipsTesting({super.key});

  @override
  State<CustomChipsTesting> createState() => _CustomChipsTestingState();
}

class _CustomChipsTestingState extends State<CustomChipsTesting> {
  int? _value = -1;

  @override
  Widget build(BuildContext context) {
    List<String>? GenderDetails = ["Male", "Female", "Others"];
    var kycDetails = {
      'Gender': ['Male', 'Fenale', 'Others'],
      'MaritalStatus': ['Single', 'Married'],
      'Occupation': [
        'Private Sector Service',
        'Public Sector Service',
        'Goverment Service',
        'House Wife',
        'Student',
        'Self Employed',
        'BUsiness',
        'Professional',
        'Retired',
        'Farmer',
        'Service',
        'Agriculturist'
      ],
      'Income': [
        'Upto 1 Lakh',
        '1 Lakh-5 Lakh',
        '5 Lakh-10 Lakh',
        '10 Lakh-15 Lakh',
        '25 Lakh-50 Lakh',
        '50 Lakh-1 Crore',
        '1 Crore -5 Crore',
        'More than 5 Crores',
      ],
      'TradingExperience': [
        'No Experience',
        '1 Year',
        '2 Year',
        '3 Year',
        '4 Year',
        '5+ Year',
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.all(20),
              color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gender",
                    style: GoogleFonts.roboto(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Select one of the options",
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  List<Widget>.generate(
//                 3,
//                 (int index) {
//                   return ChoiceChip(
//                     label: Text(GenderDetails[index]),
//                     selected: _value == index,
//                     selectedColor: Colors.lightGreen,
//                     backgroundColor: Color.fromARGB(255, 206, 206, 206),
//                     onSelected: (bool selected) {
//                       setState(() {
//                         _value = selected ? index : null;
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => initialScreen()));
//                       });
//                     },
//                   );
//                 },
//               ).toList(),

// Text(
//               'Gender',
//               style:
//                   GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Select one of the option',
//             ),

//             const SizedBox(height: 10.0),
//             Wrap(
//               children: List<Widget>.generate(
//                 kycDetails.values.length,
//                 (int index) {
//                   return ChoiceChip(
//                     label: Text(),
//                     selected: _value == index,
//                     selectedColor: Colors.lightGreen,
//                     backgroundColor: Color.fromARGB(255, 206, 206, 206),
//                     onSelected: (bool selected) {
//                       setState(() {
//                         _value = selected ? index : null;
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CustomChipsTesting()));
//                       });
//                     },
//                   );
//                 },
//               ).toList(),
//             )
