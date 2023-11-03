import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
            height: 116.0,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF9EB031), width: 2.0),
              color: const Color(0xFFCDE53D),
              boxShadow: [
                const BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.60),
                  offset: Offset(0, 4),
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    top: 36,
                    bottom: 39,
                  ),
                  child: Image.asset('assets/images/trophy.png')
                ),
                const SizedBox(width: 21),
                Padding(
                  padding: const EdgeInsets.only(top: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Go Pro (No Ads)',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Color(0xFF071D55),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0.0, 1.0),
                                blurRadius: 0.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'No fuss, no ads, for only \$1 a month',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF0D2972),
                              fontSize: 12,
                              shadows: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 0.0,
                                ),
                              ],
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 24,
          child: Container(
            width: 66.11,
            height: 71.0,
            decoration: const BoxDecoration(
              color: Color(0xFF071D55),
            ),
            child: Center(
              child: Text(
                '\$1',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(color: Color(0xFFF2C94C), fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
