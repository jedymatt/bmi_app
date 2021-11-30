import 'dart:ui';

import 'package:bmi_app/core/constants.dart';
import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/widgets/bottom_button.dart';
import 'package:bmi_app/widgets/rounded_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sort),
        ),
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: kLargeFontSize,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: RoundedCard(
                      backgroundColor: kGenderBoxColor,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0 * 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'NORMAL',
                                  style: TextStyle(
                                    color: Color(0xff22e67b),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  '22.1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: kLargeFontSize * 2,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Normal BMI Range:',
                                  style: TextStyle(
                                    color: kUnselectedLabelColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  '18.5 - 25 kg/m\u00B2',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'You have a normal body weight. Good job!',
                              softWrap: true,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                              // tex
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Color(0xff181a2e),
                                side: BorderSide.none,
                                padding: const EdgeInsets.all(20.0),
                              ),
                              onPressed: () {},
                              child: Text(
                                'SAVE RESULT',
                                style: TextStyle(color: kLabelColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: const Center(
              child: Text(
                'RE-CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
