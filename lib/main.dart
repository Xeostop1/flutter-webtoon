import 'package:flutter/material.dart';
import 'package:projets/widgets/button.dart';
import 'package:projets/widgets/currency_card.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
         child:
         Padding(
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
                   height: 70,
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
                     Button(text: "Transtor", bgColor: Colors.amber, textColor: Colors.black,),
                     Button(text: "Reqeust", bgColor: Colors.black, textColor: Colors.white),
                   ],
                 ),
                 SizedBox(
                   height: 100,
                 ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       "Wallet",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 36,
                           fontWeight: FontWeight.w600
                       ),
                     ),
                     Text("View All",
                       style:TextStyle(
                           color: Colors.white,
                           fontSize: 18,
                           fontWeight: FontWeight.w600
                       )
                       ,)
                   ],
                 ),
                 Row(),
                 SizedBox(
                   height:20 ,
                 ),
                 CurrencyCard(name: "EURO", code: "ERU", amount: "6 589", icon: Icons.euro_rounded,isInverted: false, isTransform: false,),
                 CurrencyCard(name: "Bitcoin", code: "BIT", amount: "3 349", icon: Icons.currency_bitcoin_rounded, isInverted: true, isTransform: true, offsetX: 0, offsetY: -20,),
                 CurrencyCard(name: "Dollar", code: "USD", amount: "10 589", icon: Icons.attach_money_rounded,isInverted: false, isTransform: true,offsetX: 0,offsetY: -40,),
               ],
             )
         ),
        )

      )
    );
  }
}
