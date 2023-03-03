import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../views/SettingsPage.dart';

class SearchbarCard extends StatelessWidget {
  const SearchbarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.transparent,
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.025,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/splashScreen.png"),
          ),
          SizedBox(
            width: 60,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                )),
            child: Container(
              child: Row(
                children: const [
                  Icon(Icons.search),
                  Text(
                    "Search Groww",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.21,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                )),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://lh3.googleusercontent.com/a/AEdFTp6VGyU0raIKhjgnqOPZVLs1iZ_TYUsLRi0QbiuJ=s288-p-rw-no"),
            ),
          ),
        ],
      ),
    );
  }
}

//  height: MediaQuery.of(context).size.height * 0.06,
//       width: MediaQuery.of(context).size.width * 0.95,
//       child: TextField(
//         textAlign: TextAlign.center,
//         textAlignVertical: TextAlignVertical.center,
//         decoration: InputDecoration(
//           prefix: Container(
//             child: Icon(
//               Icons.search,
//               color: Colors.grey,
//             ),
//           ),
//           contentPadding: EdgeInsets.only(top: 2),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(80),
//           ),
//           prefixIcon: Container(
//             child: CircleAvatar(
//               backgroundColor: Colors.transparent,
//               child: SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: ClipOval(child: Image.asset("assets/splashScreen.png")),
//               ),
//               // backgroundImage: AssetImage("assets/splashScreen.png"),
//             ),
//           ),
//           hintText: "Search Groww",
//           suffixIcon: Container(
//             child: CircleAvatar(
//               backgroundColor: Colors.transparent,
//               child: SizedBox(
//                 width: 30,
//                 height: 30,
//                 child: ClipOval(
//                     child: Image.network(
//                         "https://lh3.googleusercontent.com/a/AEdFTp6VGyU0raIKhjgnqOPZVLs1iZ_TYUsLRi0QbiuJ=s288-p-rw-no")),
//               ),
//             ),
//           ),
//         ),
//       ),
///Second
///
//   return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(100),
//         side: BorderSide(color: Colors.grey),
//       ),
//       color: Colors.transparent,
//       child: Container(
//         height: MediaQuery.of(context).size.height * 0.055,
//         width: MediaQuery.of(context).size.height * 0.45,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width * 0.02,
//             ),
//             CircleAvatar(
//               radius: 15,
//               backgroundImage: AssetImage("assets/splashScreen.png"),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.search,
//                   size: 20,
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.005,
//                 ),
//                 Text("Search Groww"),
//               ],
//             ),
//             SizedBox(
//               width: 80,
//             ),
//             CircleAvatar(
//               radius: 15,
//               backgroundImage: AssetImage("assets/splashScreen.png"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
