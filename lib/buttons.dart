import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Color? color; // Specify the type for the 'color' variable (Color?)
  final Color?
  textcolor; // Specify the type for the 'textcolor' variable (Color?)
  final String buttontext; // Mark the 'buttontext' parameter as required

  MyButtons({this.color, this.textcolor, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          // You can add your button contents here
          color: color,
          child: Center(
            child: Text(
              buttontext,
              style: TextStyle(color: textcolor),
            ),
          ),
        ),
      ),
    );
  }
}
