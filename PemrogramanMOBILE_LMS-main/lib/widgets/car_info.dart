import 'package:flutter/material.dart';

class CarInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Icon(Icons.person, color: Colors.blue),
            Text('2 Passengers'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.door_front_door, color: Colors.blue),
            Text('2 Doors'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.ac_unit, color: Colors.blue),
            Text('Air Conditioner'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.local_gas_station, color: Colors.blue),
            Text('Fuel: Full to Full'),
          ],
        ),
      ],
    );
  }
}

