import 'package:flutter/material.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Hey, Selena",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                          Text("welcome back",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Text("Total Balance",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("\$5 194 482",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF1B333),
                          borderRadius: BorderRadius.circular(45)
                        ),
                        child: Padding(padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40
                        ),
                        child: Text("Tranfer",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        ),
                      ),
                      Container(
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
                      )
                    ],
                  )

                ],
              )
        ),
      )
    );
  }
}
