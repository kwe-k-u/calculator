

import 'package:calculator/utils/Entry.dart';
import 'package:flutter/cupertino.dart';

class EntryStack extends ChangeNotifier{
  Node head; ///Pointer to the most recent entry
  int count = 0;///counter for number of entrys


  EntryStack(){

    // count ++;
    notifyListeners();
  }


  ///Adds an entry to the stack
  void addEntry(Entry entry){
    if (head != null){
      Node newNode = new Node(previous: head, entry: entry);
      this.head = newNode;
    } else {

    }
    count++;
    notifyListeners();
  }


  Entry elementAt(int index){
    Node _current = head;
    if (index.isNegative)
      index = count + index;

    for (int i = 0; i != index; i++){
      _current = _current.previous;
    }

    return _current.entry;
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






class Node{
  Node previous;
  Entry entry;

  Node({this.previous, this.entry});
}