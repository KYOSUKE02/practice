import 'package:flutter/cupertino.dart';

class Mainmodel extends ChangeNotifier{
  String aboyText = 'KBOY';

  void changeKboyText(){
    aboyText = 'キョウスケ';
    notifyListeners();
  }
}