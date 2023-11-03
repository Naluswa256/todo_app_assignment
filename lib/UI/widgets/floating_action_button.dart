import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import "../create_task_screen.dart";

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0, bottom: 25.0),
      child: FloatingActionButton(
        onPressed: () {
          Get.to(AddNewTaskScreen());
        },
        backgroundColor: Color(0xFF3556AB),
        // elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
          side: BorderSide(color: Color(0xFF123EB1), width: 2.0),
        ),
        child: Container(
          width: 60.0,
          height: 61.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(168, 181, 222, 0.50),
                offset: Offset(0, 1),
                blurRadius: 1,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              '+',
              style: GoogleFonts.roboto(
                shadows: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 0.0,
                  ),
                ],
                textStyle: const TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
