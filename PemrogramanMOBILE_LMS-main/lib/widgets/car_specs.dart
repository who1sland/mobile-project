import 'package:flutter/material.dart';

class CarSpecs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '320 Hp',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Max Power'),
          ],
        ),
        Column(
          children: [
            Text(
              '5.4 Sec',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('0-60 Mph'),
          ],
        ),
        Column(
          children: [
            Text(
              '187 Mph',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Top Speed'),
          ],
        ),
      ],
    );
  }
}
