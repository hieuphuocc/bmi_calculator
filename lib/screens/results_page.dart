import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.resultText,
    @required this.result,
    @required this.interPretation});

  final resultText;
  final result;
  final interPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color1: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toString().toUpperCase(),
                    style: kResultTitleStyle,
                  ),
                  Text(
                    result.toString(),
                    style: kresultNoStyle,
                  ),
                  Text(
                    interPretation,
                    textAlign: TextAlign.center,
                    style: kresultDescStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-CALCULATE',
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
