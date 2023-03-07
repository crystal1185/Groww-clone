import 'package:flutter/material.dart';

import '../models/LoginCheckModal.dart';
import '../models/OauthModal.dart';

class ServerProvider with ChangeNotifier {
  String Server_IP = "http://192.168.1.67:3000";
  String Socket_server_IP = "http://192.168.1.67:8080";
  OAuthModalClass? userDetails;
  LoginCheck? loginCheck;

  void checkIfLogin(String data) {
    loginCheck = loginCheckFromJson(data);
    notifyListeners();
  }

  void oauthDetails(String data) {
    userDetails = oAuthModalClassFromJson(data);
  }
}
