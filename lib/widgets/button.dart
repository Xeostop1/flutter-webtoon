import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String text;
  final Color bgColor;
  final Color textColor;

  Button({required this.text, required this.bgColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(45)
      ),
      child: Padding(padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40
      ),
        child: Text("Request",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}