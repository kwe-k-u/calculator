
import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:flutter/cupertino.dart';

///A class to store the calculation data
class Entry extends ChangeNotifier{
  List<Character> _calculation = [];
  double _result;

  List<Character> get calculation => _calculation;
  double get result => _result==null ? _result : 0;


  ///returns the entry as a string in the form a+b=c
  @override
  String toString() {
    String cal = '';
    for (Character char in calculation)
      cal += char.value;
    return "$cal = $result";
  }


  addCharacter(Character character){
    this._calculation.add(character);
    notifyListeners();
  }


  removeCharacter(){
    this._calculation.removeLast();
    notifyListeners();
  }


  clearAll(){
    this.cal_culation = [];
    notifyListeners();
  }




















  double _add(String first, String second){
    return _parseNumber(first) + _parseNumber(second);
  }


  double _subtract(String first, String second){
    return _parseNumber(first) - _parseNumber(second);
  }


  double _multiply(String first, String second){
    return _parseNumber(first) * _parseNumber(second);
  }


  double _divide(String first, String second){
    //ensure second isn't zero
    return _parseNumber(first) / _parseNumber(second);
  }



  double _parseNumber(String number){
    //todo ensure it contains only digits or periods
    return double.parse(number);
    // else {
    //   throw Exception("$number contains illegal character");
    // }
  }
}













///Object to represent entered characters and help process them
class Character{
  String value;
  KeyType keyType;

  Character({this.value,this.keyType});
}