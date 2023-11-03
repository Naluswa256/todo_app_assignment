import "package:flutter/material.dart";
import "package:todo_app_assignment/UI/widgets/done_button.dart";
import "package:todo_app_assignment/UI/widgets/text_field.dart";
import "package:get/get.dart";
import "package:todo_app_assignment/data/local_storage/local_storage_service.dart";
import "package:todo_app_assignment/data/model/task_model.dart";

class EditTaskScreen extends StatefulWidget {
  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  final TextEditingController _taskNameController = TextEditingController();
  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

  final _localStorageService = Get.put(LocalStorageService());
  Task task = Get.arguments as Task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF3F3F3),
      appBar: AppBar(
        surfaceTintColor: Color(0xFF3556AB),
        backgroundColor: Color(0xFF3556AB),
        centerTitle: true,
        title: const Text(
          'Edit Task',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 39),
            RoundedTextField(
              controller: _taskNameController,
            ),
            const Spacer(),
            DoneButton(
              onToggle: () {
                task.title = _taskNameController.text;
                _localStorageService.updateTask(task);
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
