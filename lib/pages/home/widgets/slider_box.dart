import 'package:flutter/material.dart';

class SliderBox extends StatelessWidget {
  SliderBox({
    required this.label,
    required this.unit,
    required this.value,
    required this.onChanged,
  });
  String label;
  double value;
  String unit;
  void Function(double newValue) onChanged;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(label, style: TextStyle(fontSize: 20)),
            Spacer(),
            Text(value.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Text(unit, style: TextStyle(fontSize: 20)),
          ],
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          min: 1,
          max: 300,
        )
      ],
    );
  }
}
