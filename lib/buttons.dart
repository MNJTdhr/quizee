import 'package:flutter/material.dart';

Color color1 = Colors.white;

class MyButton extends StatelessWidget {
  const MyButton(this.theText, this.color1, {super.key});

  final String theText;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: color1,
        ),
        child: SizedBox(
          width: 300,
          height: 50,
          child: Center(
            child: Text(
              theText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
