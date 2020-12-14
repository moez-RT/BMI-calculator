import 'file:///C:/Users/user/Desktop/Tuto/bmi-calculator-flutter/lib/utils/constants.dart';
import 'package:bmi_calculator/components/custom_container.dart';
import 'package:bmi_calculator/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final Result res ;
  ResultScreen({this.res});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
              child: Text('Your Result', style: kMediumText,),),

          Expanded(
            child: CustomContainer(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,


                children: [
                Text(res.state, style: res.style,),
                Text(res.score, style: kTitleTextStyle,),
                Text('Normal BMI range:', style: kInactiveText,),
                Text('18.5 - 25 KG/m²', style: kActiveText,),
                Container(
                  padding: EdgeInsets.all(20.0),
                    child: Text(res.hint,
                        style: kActiveText,
                    textAlign: TextAlign.center,),),

                CustomContainer(
                  color: kInactiveCardColor,
                  cardChild: Container(
                    padding: EdgeInsets.all(15.0),
                      child: Text('SAVE RESULT', style: kActiveText,)),
                  onPress: () {
                    Navigator.of(context).pop();
                  },
                )


              ],),


            ),
          ),
          Container(
            width: double.infinity,
            height: kBottomContainerHeight,
            color: kAccentColor,
            child: Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('RE-CALCULATE',style: kActiveText,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
