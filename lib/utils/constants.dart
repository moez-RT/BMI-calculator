import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kActiveCardColor = Color(0xFF1D1F33);
const kInactiveCardColor = Color(0xFF111428);
const kAccentColor = Color(0xFFEB1555);
const kBottomContainerHeight = 70.0;
const kGrey = Color(0xFF8D8E98);

final kBigText = GoogleFonts.alegreyaSans(
    color: Colors.white, fontWeight: FontWeight.w900, fontSize: 60.0);
final kMediumText = GoogleFonts.alegreyaSans(
    color: Colors.white, fontWeight: FontWeight.w700, fontSize: 45.0);

final kActiveText = GoogleFonts.alegreyaSans(
    fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.w700);
final kInactiveText = GoogleFonts.alegreyaSans(fontSize: 19.0, color: kGrey,fontWeight: FontWeight.w600);


final kUnderWeightStateText = GoogleFonts.alegreyaSans(fontSize: 35.0, color: Color(0xFFD40000),fontWeight: FontWeight.w600);
final kNormalStateText = GoogleFonts.alegreyaSans(fontSize: 35.0, color: Color(0xFF209E61),fontWeight: FontWeight.w600);
final kOverWeightStateText = GoogleFonts.alegreyaSans(fontSize: 35.0, color: Colors.yellowAccent,fontWeight: FontWeight.w600);


const kMinHeight = 120.0;
const kMaxHeight = 220.0;



final kTitleTextStyle = GoogleFonts.alegreyaSans(
    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 80.0);


const kNormalHint = 'You have a normal body weight. Good Job!';
const kOverWeightHint = 'You have a higher than normal body weight. Try to exercise more.';
const kUnderWeightHint = 'You have a lover than normal body weight. You can eat a bit more.';
