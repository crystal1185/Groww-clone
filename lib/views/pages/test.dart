import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  String? _sessionToken;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      if (account != null) {
        _handleSignIn(account);
      }
    });
    _googleSignIn.signInSilently();
  }

  // Google Sign in Handler
  Future<void> _handleSignIn(GoogleSignInAccount account) async {
    String? idToken = (await account.authentication).idToken;
    http.Response response = await http.post(
      '// connect to naveen backend' as Uri,
      headers: {'Authorization': 'Bearer $idToken'},
    );
    if (response.statusCode == 200) {
      setState(() {
        _sessionToken = response.body;
      });
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_sessionToken != null) Text(_sessionToken!),
            ElevatedButton(
              onPressed: _signInWithGoogle,
              child: Text('Testing Sign in with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
