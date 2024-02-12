import 'package:flutter/cupertino.dart';

import '../../../features/auth/models/user.dart';

class UserAdapter extends ChangeNotifier{


  String? _token;
  String? _id;
  User? _user;

  User? get user => _user;
  set user(User? user){
    _user = user;
    notifyListeners();
  }







}