
import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:flutter/cupertino.dart';

///A class to store the calculation data
class Entry extends ChangeNotifier{
  List<Character> _calculation = [];
  double _result;

  List<Character> get calculation => _calculation;///Returns a list of characters used for calculation
  double get result => _result==null ? 0 : _result;///Returns the result of the calculation

  ///Returns the list of characters for the calculation as a string
  String get calculationString {
    String _string = "";
    for (Character char in calculation)
      _string += char.value;

    return _string;
  }


  ///returns the entry as a string in the form a+b=c
  @override
  String toString() {
    return "$calculationString = $result";
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
    this._calculation = [];
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