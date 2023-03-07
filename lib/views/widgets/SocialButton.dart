import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../navigations/tabbar.dart';
import '../../provider/ServerProvider.dart';

class SignInWithGoogle extends StatefulWidget {
  const SignInWithGoogle({super.key});

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

// String? SERVER_IP = "http://192.168.29.129:3000";

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  Future<String?> googleOAuthSignin() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final serverStatus = Provider.of<ServerProvider>(context, listen: false);
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    String? accessToken;
    String? idToken;
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      print(googleSignInAuthentication.accessToken);
      print(googleSignInAuthentication.idToken);
      accessToken = googleSignInAuthentication.accessToken;
      idToken = googleSignInAuthentication.idToken;
      print(accessToken.runtimeType);
    }
    print(accessToken);
    print(idToken);
    var res = await http.post(Uri.parse("${serverStatus.Server_IP}/createUser"),
        body: jsonEncode({"access_token": accessToken, "id_token": idToken}),
        headers: {
          "accept": "application/json",
          "content-type": "application/json"
        });
    print(res.body);
    if (res.statusCode == 200) {
      final storeDetail = Provider.of<ServerProvider>(context, listen: false);
      storeDetail.oauthDetails(res.body);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() async {
        String? jsonValue = await googleOAuthSignin();
        print(jsonValue);

        /// Deserialize
        /// Life cycle destroy.
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tabbar()));
      }),
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
              const SizedBox(
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
