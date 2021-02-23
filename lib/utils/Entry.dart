
import 'package:calculator/UI/Widgets/KeyPadButton.dart';

///A class to store the calculation data
class Entry{
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
}













///Object to represent entered characters and help process them
class Character{
  String value;
  KeyType keyType;

  Character({this.value,this.keyType});
}