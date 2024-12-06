import 'package:flutter/cupertino.dart';

class TaskProvider extends ChangeNotifier {
  List<Shaqooyinka> _Tasks = [];

  List<Shaqooyinka> get Tasks => _Tasks;

  addTask(Shaqooyinka tittle) {
    _Tasks.add(tittle);
    notifyListeners();
  }

  deletetasks(int index) {
    _Tasks.remove(index);
    notifyListeners();
  }
}

class Shaqooyinka {
  String title;
  int Date;
  bool finished;

  Shaqooyinka(
      {required this.title, required this.Date, required this.finished});
}
