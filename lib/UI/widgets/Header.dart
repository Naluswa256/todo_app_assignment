import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 123.0,
      decoration: const BoxDecoration(
        color: Color(0xFF3556AB),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 32, top: 19, bottom: 54),
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/profile_pic.png'),
            ),
          ),
          const SizedBox(width: 21),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Jhon',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  'What are your plans\nfor today?',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
