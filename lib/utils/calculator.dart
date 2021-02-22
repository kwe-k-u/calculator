


double add(String first, String second){
  return _parseNumber(first) + _parseNumber(second);
}


double subtract(String first, String second){
  return _parseNumber(first) - _parseNumber(second);
}


double multiply(String first, String second){
  return _parseNumber(first) * _parseNumber(second);
}


double divide(String first, String second){
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