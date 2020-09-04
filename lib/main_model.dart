import 'package:flutter/cupertino.dart';

class Mainmodel extends ChangeNotifier{
  String kboyText = 'KBOY';

  void changeKboyText(){
    kboyText = 'キョウスケ';
    notifyListeners();
  }
}