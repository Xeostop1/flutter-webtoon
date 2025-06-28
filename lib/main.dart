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

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "my Large Title",
    style: TextStyle(
      fontSize: 30,
      color: Theme.of(context).textTheme.titleLarge?.color,
    ),
    );
  }
}