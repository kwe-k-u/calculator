

import 'package:calculator/utils/Entry.dart';
import 'package:flutter/cupertino.dart';

class EntryStack extends ChangeNotifier{
  _Node head; ///Pointer to the most recent entry
  int count = 0;///counter for number of entrys


  EntryStack(this.head){
    count ++;
    notifyListeners();
  }


  ///Adds an entry to the stack
  void addEntry(Entry entry){
    _Node newNode = new _Node(previous: head, entry: entry);
    this.head = newNode;
    count++;
    notifyListeners();
  }


  ///Makes changes to the most recent entry;gi
  void editLastEntry(Entry entry){
    this.head.entry = entry;
    notifyListeners();
  }

  ///Removes all elements in the stack
  void empty(){
    count = 0;
    this.head = null;
    notifyListeners();
  }




}






class _Node{
  _Node previous;
  Entry entry;

  _Node({this.previous, this.entry});
}