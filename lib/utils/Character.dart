import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:calculator/utils/KeyType.dart';

///Object to represent entered characters and help process them
class Character{
  String value;
  KeyType keyType;

  Character({this.value,this.keyType});
}