
import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:calculator/utils/Character.dart';
import 'package:calculator/utils/KeyType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    if (character.value == "=") { //if the user is trying to evaluate
      this._result = _calculate();

    } else {
      this._calculation.add(character);
    }
    notifyListeners();
  }


  removeCharacter(){
    this._calculation.removeLast();
    notifyListeners();
  }


  clearAll(){
    this._calculation = [];
    this._result = 0;

    notifyListeners();
  }






















///Calculates the result of the entries using bodmas
  double _calculate(){//todo include to support brachets
    /*
    * To calculate the result of an entry, all the characters are iterated over,
    * seeking the indexes of the operands. Using the indexes, the joining characters
    * are evaluated based on the operator, with the three characters (operands and operators)
    * removed and replaced with their value.
    */
    List<dynamic> _entries = [];
    List<Character> bodmas = [
      new Character(value:"/", keyType: KeyType.operation),
      new Character(value:"x", keyType: KeyType.operation),
      new Character(value:"+", keyType: KeyType.operation),
      new Character(value:"-", keyType: KeyType.operation),
    ]; ///contains the operators arranged in bodmas order
    String _temp = "";
    //iterating through the user's character entries to convert them into numbers and operators
      for (int index = 0; index < _calculation.length; index++) {
        Character char = _calculation.elementAt(index);

        //character is a digit or symbol (decimal or bracket)
        if (char.keyType == KeyType.number || char.keyType == KeyType.symbol) {
          _temp += char.value;

        } else if (char.keyType == KeyType.operation) { //if character is an operation +-*/

          _entries.add(_parseNumber(_temp));
          _entries.add(char);
          _temp = "";
          // print(char.value);
        }
        if (index+1 == _calculation.length) {
          _entries.add(_parseNumber(_temp));
        }


      }


      //performing calculations
    int _index = 0;//index of the current operator
    Character current = bodmas[_index];
    
    while (_entries.length > 1){
        current = bodmas[_index];

        _entries.firstWhere((element) {
          if (element != current)//if this isn't the current operator
            return false;
          
          //if the current operator has been found, get it's index
          int charIndex = _entries.indexOf(element);//todo replace (increases runtime to n^2)

          //perform calculation with elements that surround the operator
          Character operation = _entries.elementAt(charIndex);


          switch(operation.value){
                case "+": //Addition
                 _entries.insert(charIndex+2, _add(_entries.elementAt(charIndex-1), _entries.elementAt(charIndex+1)) );
                  _entries.removeAt(charIndex+1);
                  _entries.removeAt(charIndex);
                  _entries.removeAt(charIndex-1);
                  break;

                case "-"://subtraction
                  _entries.insert(charIndex+2, _subtract(_entries.elementAt(charIndex-1), _entries.elementAt(charIndex+1)) );
                  _entries.removeAt(charIndex+1);
                  _entries.removeAt(charIndex);
                  _entries.removeAt(charIndex-1);
                  break;

                case "x"://multiplication
                  _entries.insert(charIndex+2, _multiply(_entries.elementAt(charIndex-1), _entries.elementAt(charIndex+1)) );
                  _entries.removeAt(charIndex+1);
                  _entries.removeAt(charIndex);
                  _entries.removeAt(charIndex-1);
                  break;

                case "/"://division
                  _entries.insert(charIndex+2, _divide(_entries.elementAt(charIndex-1), _entries.elementAt(charIndex+1)) );
                  _entries.removeAt(charIndex+1);
                  _entries.removeAt(charIndex);
                  _entries.removeAt(charIndex-1);
                  break;

                default:
                  throw Exception("Error with ${operation.value}");
          }

          return true;
        },
        orElse: (){
          //if no operator exist
          _index++;
        });
        
        
    }
    
    double result = _entries.elementAt(0);

      return result;
  }

  double _add(double first, double second){
    return first + second;
  }


  double _subtract(double first, double second){
    return first - second;
  }


  double _multiply(double first, double second){
    return first * second;
  }


  double _divide(double first, double second){
    //ensure second isn't zero
    if (second != 0)
      return first / second;
    throw IntegerDivisionByZeroException();
  }



  double _parseNumber(String number){
    //todo ensure it contains only digits or periods
    return double.parse(number);
    // else {
    //   throw Exception("$number contains illegal character");
    // }
  }
}









