import "package:flutter/material.dart";

class DoneButton extends StatelessWidget {
  final VoidCallback onToggle;
  const DoneButton({super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        width: double.infinity,
        height: 61.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Color(0xFF0D2972), width: 2.0),
          color: Color(0xFF3556AB),
          boxShadow: [
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
            'Done',
            style: TextStyle(
              color: Colors.white,
              shadows: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 0,
                  color: Color(0xFF000000),
                ),
              ],
              fontFamily: 'Roboto',
              fontSize: 18.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
