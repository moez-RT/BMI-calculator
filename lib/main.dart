import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        accentColor: Color(0xFFEB1555),
        primaryIconTheme: IconThemeData(
          color: Color(0xFFEB1555),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFEB1555),
          foregroundColor: Colors.white
        ),
        accentIconTheme: IconThemeData(
          color: Color(0xFFEB1555),
        ),

        scaffoldBackgroundColor: Color(0xFF0A0D22),
        textTheme: TextTheme(
          bodyText2: GoogleFonts.alegreyaSans(
              fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}


