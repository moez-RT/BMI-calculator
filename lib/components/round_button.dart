import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Widget child ;
  final Function onPressed;
  RoundButton({this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
        onPressed: onPressed,
        child: child,
      fillColor: Theme.of(context).accentColor,
    );
  }
}
