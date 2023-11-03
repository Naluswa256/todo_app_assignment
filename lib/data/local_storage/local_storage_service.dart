// local_storage_service.dart
import 'package:get/get.dart';
import '../model/task_model.dart';
import '../repository/task_repository.dart';

class LocalStorageService extends GetxController {
  final TaskRepository _repository = TaskRepository();
  final RxList<Task> tasks = <Task>[].obs;

  @override
  void onInit() {
    fetchTasks();
    super.onInit();
  }

  Future<void> fetchTasks() async {
    tasks.value = await _repository.getTasks();
  }

  Future<void> addTask(Task task) async {
    await _repository.insertTask(task);
    fetchTasks();
  }

  Future<void> updateTask(Task task) async {
    await _repository.updateTask(task);
    fetchTasks();
  }

  Future<void> deleteTask(String id) async {
    await _repository.deleteTask(id);
    fetchTasks();
  }
}
