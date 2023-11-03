import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class RoundedTextField extends StatelessWidget {
  final TextEditingController controller;
  RoundedTextField({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Task Name',
          style: GoogleFonts.roboto(
            textStyle:
                const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 1.84),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: double.infinity,

          /// padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9.0),
                borderSide: BorderSide(color: Color(0xFFCBCBCB), width: 2.0),
              ),
              filled: true,
              fillColor: Color(0xFFFDFDFD),
            ),
          ),
        ),
      ],
    );
  }
}
