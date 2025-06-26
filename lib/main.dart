import 'package:flutter/material.dart';
import 'package:projets/widgets/button.dart';
import 'package:projets/widgets/currency_card.dart';


void main() {
  runApp(App());
}

class App extends StatefulWidget{
  @override
 State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> nums =[];


  void onClick(){
    setState(() {
      nums.add(nums.length);
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("click count",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600),
              ),
              for(var num in nums) Text('${num+1}'),
              IconButton(onPressed: onClick, icon: Icon(Icons.add_box_rounded),iconSize: 40,)

            ],
          ),

        ),
      ),
    );
  }
}