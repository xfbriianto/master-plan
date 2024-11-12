import 'task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  

  const Plan({this.name = '', this.tasks = const []});

  String get completenessMessage {
    if (tasks.isEmpty) {
      return 'No tasks';
    }
    int completedTasks = tasks.where((task) => task.isCompleted).length;
    return '$completedTasks of ${tasks.length} tasks completed';
  }
}
