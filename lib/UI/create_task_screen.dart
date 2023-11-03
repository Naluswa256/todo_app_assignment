import "package:flutter/material.dart";
import "package:todo_app_assignment/UI/widgets/done_button.dart";
import "package:todo_app_assignment/UI/widgets/text_field.dart";
import "package:get/get.dart";
import "package:todo_app_assignment/data/local_storage/local_storage_service.dart";
import "package:todo_app_assignment/data/model/task_model.dart";

class AddNewTaskScreen extends StatefulWidget {
  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _taskNameController = TextEditingController();
  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }

  final _localStorageService = Get.put(LocalStorageService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF3F3F3),
      appBar: AppBar(
        surfaceTintColor: Color(0xFF3556AB),
        backgroundColor: Color(0xFF3556AB),
        centerTitle: true,
        title: const Text(
          'Add New Task',
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
                _localStorageService.addTask(Task(
                  title: _taskNameController.text,
                ));
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
