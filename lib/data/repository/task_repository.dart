// task_repository.dart
import 'package:sqflite/sqflite.dart';

import '../../config/database_config.dart';
import '../model/task_model.dart';

class TaskRepository {
  late Database database;

  TaskRepository() {
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    database = await DatabaseConfig.init();
  }

  Future<void> insertTask(Task task) async {
    await database.insert('tasks', task.toMap());
  }

  Future<List<Task>> getTasks() async {
    final List<Map<String, dynamic>> maps = await database.query('tasks');
    return List.generate(maps.length, (i) {
      return Task(
        id: maps[i]['id'],
        title: maps[i]['title'],
        isCompleted: maps[i]['isCompleted'] == 1,
      );
    });
  }

  Future<void> updateTask(Task task) async {
    await database.update(
      'tasks',
      task.toMap(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  Future<void> deleteTask(String id) async {
    await database.delete(
      'tasks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
