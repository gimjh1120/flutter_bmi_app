import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';
import 'package:flutter_bmi_app/pages/result/result_page.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isMale = true;
  void onGenderChanged(bool male) {
    setState(() {
      isMale = male;
    });
  }

  double height = 170;
  void onHeightChanged(double newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  double weight = 70;
  void onWeightChanged(double newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 60,
        ),
        child: Column(
          children: [
            GenderBox(isMale, onGenderChanged),
            Spacer(),
            SliderBox(
              label: 'HEIGHT',
              unit: 'cm',
              value: height,
              onChanged: onHeightChanged,
            ),
            Spacer(),
            SliderBox(
              label: 'WEIGHT',
              unit: 'kg',
              value: weight,
              onChanged: onWeightChanged,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  final meterHeight = height / 100;
                  final bmi = weight / (meterHeight * meterHeight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultPage(bmi);
                      },
                    ),
                  );
                },
                child: Text('CALCULATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
