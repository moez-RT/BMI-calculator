import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../components/custom_container.dart';
import '../components/custom_content.dart';
import '../components/round_button.dart';

enum gender { Male, Female, None }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender = gender.None;
  int height = 180;
  int weight = 60;
  int age = 30;

  genderUpdate(newGender) {
    setState(() {
      selectedGender = newGender;
    });
  }
  weightUpdate(newWeight) {
    setState(() {
      if (newWeight > 19) {
        weight = newWeight;
      }
    });
  }
  ageUpdate(newAge) {
    setState(() {
      if (newAge > 0) {
        age = newAge;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onPress: () {
                        genderUpdate(gender.Male);
                      },
                      color: selectedGender == gender.Male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CustomContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                        active: selectedGender == gender.Male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomContainer(
                      onPress: () {
                        genderUpdate(gender.Female);
                      },
                      color: selectedGender == gender.Female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: CustomContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                        active: selectedGender == gender.Female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomContainer(
                color: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kInactiveText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: kBigText,
                        ),
                        Text(
                          'cm',
                          style: kInactiveText,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                      ),
                      child: Slider(
                        activeColor: kAccentColor,
                        inactiveColor: kActiveCardColor ,
                        value: height.toDouble(),
                        min: kMinHeight,
                        max: kMaxHeight,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      color: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: kInactiveText,),
                          Text('$weight', style: kBigText,),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  RoundButton(
                                    onPressed: () {weightUpdate(weight-1);},
                                    child: Icon(
                                      FontAwesomeIcons.minus, size: 25.0,
                                    ),
                                  ),
                                  RoundButton(
                                    onPressed: () {weightUpdate(weight+1);},
                                    child: Icon(
                                      FontAwesomeIcons.plus, size: 25.0,
                                    ),
                                  ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomContainer(
                      color: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: kInactiveText,),
                          Text('$age', style: kBigText,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundButton(
                                onPressed: () { ageUpdate(age-1);},
                                child: Icon(
                                  FontAwesomeIcons.minus, size: 25.0,
                                ),
                              ),
                              RoundButton(
                                onPressed: () {ageUpdate(age+1);},
                                child: Icon(
                                  FontAwesomeIcons.plus, size: 25.0,
                                ),
                              ),

                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kAccentColor,
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ResultScreen(
                         res: CalculatorBMI(
                           height: height,
                           weight: weight,
                           age: age,
                         ).getFullResult()
                        );
                      }
                    ));
                  },
                  child: Text('CALCULATE',style: kActiveText,),
                ),
              ),
            )
          ],
        ));
  }
}
