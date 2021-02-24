
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
    notifyListeners();
  }


















  double _calculate(){
    //per the algorithm used, after all the operators have been iterated over, only
    //one value will remain in the operand array. That value is the result of the
    //evalution of the calculation
    List<double> operands = [];
    List<Character> operators = [];
    String _temp = ""; ///Temporary string to store the current sequence of digits



    //sorting entrys
    for (int index = 0; index < _calculation.length; index++) {
      Character char = _calculation.elementAt(index);
      //character is a digit or symbol (decimal or bracket)
      if (char.keyType == KeyType.number || char.keyType == KeyType.symbol) {
        _temp += char.value;
        // print(char.value);
      } else if (char.keyType == KeyType.operation) { //if character is an operation +-*/
        operators.add(char);
        operands.add(_parseNumber(_temp));
        _temp = "";
        // print(char.value);
      }
      if (index+1 == _calculation.length) {
        operands.add(_parseNumber(_temp));
      }
    }
    print("operators ${operators.toString()}");
    print("operands ${operands.toString()}");


    for (Character operation in operators){
      switch(operation.value){
        case "+": //Addition
         operands.insert(0, _add(operands.elementAt(0), operands.elementAt(1)) );
          operands.removeAt(1);
          operands.removeAt(1);
          break;

        case "-"://subtraction
          operands.insert(0, _subtract(operands.elementAt(0), operands.elementAt(1)) );
          operands.removeAt(1);
          operands.removeAt(1);
          break;

        case "x"://multiplication
          operands.insert(0, _multiply(operands.elementAt(0), operands.elementAt(1)) );
          operands.removeAt(1);
          operands.removeAt(1);
          break;

        case "/"://division
          operands.insert(0, _divide(operands.elementAt(0), operands.elementAt(1)) );
          operands.removeAt(1);
          operands.removeAt(1);
          break;

        default:
          throw Exception("Error with ${operation.value}");
      }
    }

    return operands.elementAt(0);
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













///Object to represent entered characters and help process them
class Character{
  String value;
  KeyType keyType;

  Character({this.value,this.keyType});
}