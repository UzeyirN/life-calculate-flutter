import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifecycle/constants.dart';
import 'package:lifecycle/result_page.dart';
import 'package:lifecycle/user_data.dart';

import 'gender_column.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 171;
  int weight = 74;
  double sportDays = 3;
  double cigarettesCount = 0;
  String chooseGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LIFE CYCLE',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.grey[700],
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildHeightAndWeightRow('HEIGHT'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: MyContainer(
                    child: buildHeightAndWeightRow('WEIGHT'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                children: [
                  Text(
                    'How many times do exercise per a week?',
                    style: kTextStyle,
                  ),
                  Text(
                    sportDays.round().toString(),
                    style: kCountStyle,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: sportDays,
                    onChanged: (double newValue) {
                      setState(() {
                        sportDays = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                children: [
                  Text(
                    'How many cigarettes do you smoke per a day?',
                    style: kTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    cigarettesCount.round().toString(),
                    style: kCountStyle,
                  ),
                  Slider(
                    min: 0,
                    max: 20,
                    value: cigarettesCount,
                    onChanged: (double newValue) {
                      setState(() {
                        cigarettesCount = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chooseGender = 'woman';
                      });
                    },
                    color: chooseGender == 'woman'
                        ? Colors.lightBlueAccent
                        : Colors.white,
                    child: GenderColumn(
                      genderIcon: FontAwesomeIcons.venus,
                      genderTitle: 'WOMAN',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chooseGender = 'man';
                      });
                    },
                    color: chooseGender == 'man'
                        ? Colors.lightBlueAccent
                        : Colors.white,
                    child: GenderColumn(
                        genderTitle: 'MAN', genderIcon: FontAwesomeIcons.mars),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      userData: UserData(
                          height: height,
                          weight: weight,
                          sportDays: sportDays,
                          cigarettesCount: cigarettesCount,
                          chooseGender: chooseGender),
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Text(
                'CALCULATE',
                style: kTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildHeightAndWeightRow(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: kTextStyle,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            title == 'HEIGHT' ? '$height' : '$weight',
            style: kCountStyle,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  title == 'HEIGHT' ? height++ : weight++;
                });
              },
              style: kOutlinedButtonStyle(),
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.lightBlue[900],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  title == 'HEIGHT' ? height-- : weight--;
                });
              },
              style: kOutlinedButtonStyle(),
              child: Icon(FontAwesomeIcons.minus),
            ),
          ],
        ),
      ],
    );
  }
}
