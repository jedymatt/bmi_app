import 'package:bmi_app/core/constants.dart';
import 'package:bmi_app/widgets/custom_card.dart';
import 'package:bmi_app/widgets/icon_content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 25.0,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        Expanded(
                          child: CustomCard(
                            color: kGenderBoxColor,
                            child: IconContent(
                              iconData: Icons.male,
                              label: 'MALE',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: CustomCard(
                            color: kGenderBoxColor,
                            child: IconContent(
                              iconData: Icons.female,
                              label: 'FEMALE',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Expanded(
                    child: CustomCard(
                      color: kDefaultBoxColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Expanded(
                          child: CustomCard(
                            color: kDefaultBoxColor,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: CustomCard(
                            color: kDefaultBoxColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: kDefaultButtonColor,
            height: kToolbarHeight * 1.10,
            child: const Center(
              child: Text(
                'CALCULATE YOUR BMI',
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

  Widget buildContainer(Widget child) {
    return Container();
  }
}
