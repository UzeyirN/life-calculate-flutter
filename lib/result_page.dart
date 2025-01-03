import 'package:flutter/material.dart';
import 'package:lifecycle/calculate.dart';
import 'package:lifecycle/constants.dart';
import 'package:lifecycle/user_data.dart';

class ResultPage extends StatefulWidget {
  final UserData? userData;

  const ResultPage({super.key, this.userData});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text(
          'Result Page',
          style: kTextStyle,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            Calculate(widget.userData).calculate().toStringAsFixed(2),
            textAlign: TextAlign.center,
            style: kTextStyle,
          ),
          Spacer(
            flex: 3,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              backgroundColor: Colors.white,
              minimumSize: Size(double.infinity, 70),
            ),
            child: Text(
              'GO BACK',
              style: kTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
