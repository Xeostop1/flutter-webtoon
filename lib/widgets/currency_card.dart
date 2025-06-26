import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
final String name, code, amount;
final IconData icon;
final bool isInverted;

CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted} );


@override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
        color:  isInverted ? Colors.white:Color(0XFF1F2123),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: isInverted ? Colors.black: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(amount,
                    style: TextStyle(
                      color: isInverted ? Colors.black: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(code,
                    style: TextStyle(
                      color: isInverted ? Colors.black: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
          Transform.scale(
            scale: 2.2,
            child:Transform.translate(
              offset: Offset(-5, 12),
              child: Icon(icon,
                color: isInverted ? Colors.black: Colors.white,
                size: 88,
              ),
            ),

          ),
        ],
      ),
    ),
  );
  }
}