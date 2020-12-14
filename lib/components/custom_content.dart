import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class CustomContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;
  CustomContent({@required this.icon, @required this.text, @required this.active});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: active ?90.0: 80.0,color: active? Colors.white : kGrey ,),
        SizedBox(height: 15.0,),
        Text(
          text, style: active ? kActiveText: kInactiveText ,
        ),
      ],
    );
  }
}