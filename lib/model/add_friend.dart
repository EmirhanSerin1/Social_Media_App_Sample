import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddFriend extends ChangeNotifier{

  final List<String> _invite = [
    "Invite",
    "Invite",
    "Invite",
    "Invite",
    "Invite",
  ];

  List get invite => _invite;

  final List<Color> _color = [
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
    Colors.blue.shade900,
  ];

  List get color => _color;

  final List<int> _value = [
    1,
    1,
    1,
    1,
    1,
  ];

  List get value => _value;



  changeInvite(int number){
    value[number] % 2 == 0 ? color[number] = Colors.blue.shade900 : color[number] = Colors.black;
    value[number] % 2 == 0 ? invite[number] = "Invite" : invite[number] = "Invited";
    value[number]++;
    notifyListeners();
  }




}