import 'package:flutter/material.dart';

class Meal_Item_Trait extends StatelessWidget {
  const Meal_Item_Trait({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
