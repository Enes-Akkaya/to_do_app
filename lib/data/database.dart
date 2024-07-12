

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('MyBox');

  void createInitialData() {
    toDoList = [
      ["Default task", false],
      ["Default task 2", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("ToDoList");
  }

  void updateDatabase() {
    _myBox.put("ToDoList", toDoList);
  }

}