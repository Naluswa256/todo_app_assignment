import "package:flutter/material.dart";
import "package:todo_app_assignment/UI/widgets/Header.dart";
import "package:todo_app_assignment/UI/widgets/stack_widget.dart";
import "package:todo_app_assignment/UI/widgets/floating_action_button.dart";
import "package:flutter/services.dart";

import 'package:get/get.dart';
import '../data/local_storage/local_storage_service.dart';
import "../data/model/task_model.dart";
import "package:todo_app_assignment/UI/widgets/task_widget.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _localStorageService = Get.put(LocalStorageService());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xFF3556AB)),
    );
    return Scaffold(
        backgroundColor: Color(0XFFF3F3F3),
        body: SafeArea(
            child: Column(children: [
          Header(),
          const StackWidget(),
          const SizedBox(height: 20),
          Obx(
            () => _localStorageService.tasks.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text('No Tasks Yet Create One')])
                : Expanded(
                    child: ListView.builder(
                      itemCount: _localStorageService.tasks.length,
                      itemBuilder: (context, index) {
                        Task task = _localStorageService.tasks[index];
                        return TaskWidget(task: task);
                      },
                    ),
                  ),
          ),
        ])),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }
}
