import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:get/get.dart";
import '../../data/model/task_model.dart';
import "package:todo_app_assignment/UI/edit_task_screen.dart";
import "package:todo_app_assignment/data/local_storage/local_storage_service.dart";

class TaskWidget extends StatelessWidget {
  final Task task;

  TaskWidget({Key? key, required this.task}) : super(key: key);
  final _localStorageService = Get.put(LocalStorageService());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16, bottom: 24),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 4.0),
            blurRadius: 4.0,
            color: Color.fromRGBO(0, 0, 0, 0.10),
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        height: 91.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Color(0xFFE7E7E7), width: 1.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: CircularCheckbox(
                isChecked: task.isCompleted,
                onToggle: () {
                  task.isCompleted = !task.isCompleted;
                  _localStorageService.updateTask(task);
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Text(
                  task.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: task.isCompleted ? Color(0XFF8D8D8D) : Color(0xFF071D55),
                    decoration: task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ClickableContainer(
                onTap: () {
                  // Handle "Edit" container click (e.g., navigate to edit screen)
                  Get.to(EditTaskScreen(), arguments: task);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircularCheckbox extends StatefulWidget {
  final bool isChecked;
  final VoidCallback onToggle;

  const CircularCheckbox({Key? key, required this.isChecked, required this.onToggle}) : super(key: key);

  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onToggle,
      child: Container(
        width: 32.0,
        height: 32.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0XFF071D55)),
          color: widget.isChecked ? Color(0XFF399649) : null,
        ),
        child: widget.isChecked
            ? Icon(
                Icons.check,
                size: 20.0,
                color: Colors.black.withOpacity(0.5),
              )
            : null,
      ),
    );
  }
}

class ClickableContainer extends StatelessWidget {
  final VoidCallback onTap;

  const ClickableContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 51.0,
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Color(0xFF071D55), width: 1.0),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            'Edit',
            style: GoogleFonts.roboto(
              color: Color(0xFF071D55),
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
