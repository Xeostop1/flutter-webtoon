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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),


            ],
          ),

        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("my Large Title",
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600),
    );
  }
}