import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        gender(context, Icons.male, 'MALE', true),
        SizedBox(width: 8),
        gender(context, Icons.female, 'FEMALE', false),
      ],
    );
  }

  Widget gender(
    BuildContext context,
    IconData icon,
    String text,
    bool selected,
  ) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Opacity(
                opacity: 0.3,
                child: Icon(
                  icon,
                  size: 80,
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Opacity(
                opacity: selected ? 1 : 0.3,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
