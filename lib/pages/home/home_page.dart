import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/pages/home/widgets/gender_box.dart';
import 'package:flutter_bmi_app/pages/home/widgets/slider_box.dart';

class Homepage extends StatelessWidget {
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
            GenderBox(),
            Spacer(),
            SliderBox(label: 'HEIGHT', unit: 'cm', value: 170),
            Spacer(),
            SliderBox(label: 'WEIGHT', unit: 'kg', value: 70),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('CALCULATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
