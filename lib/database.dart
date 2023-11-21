import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  final _newBox = Hive.box('newBox');

  List toDoList = [];

  //method if 1st time opening app
  void createInitialData() {
    toDoList = [
      ['create Presentation', false],
      ['create note', false],
    ];
  }

//load the data from database
  void loadData() {
    toDoList = _newBox.get("TODO");
  }

//update database
  void updateData() {
    _newBox.put("TODO", toDoList);
  }
}
