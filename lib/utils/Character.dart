import 'package:calculator/UI/Widgets/KeyPadButton.dart';
import 'package:calculator/utils/KeyType.dart';

///Object to represent entered characters and help process them
class Character{
  String value;
  KeyType keyType;

  Character({this.value,this.keyType});


  @override
  bool operator ==(Object o) {
    Character other = o;
    return this.value.compareTo(other.value) == 0 && this.keyType.index == other.keyType.index;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

}