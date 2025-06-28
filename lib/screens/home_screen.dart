import 'package:flutter/material.dart';
import 'package:projets/services/api_service.dart';
import 'package:projets/models/webtoon_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Future<List<WebtoonModel>> webtoons =ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        foregroundColor: Colors.green,
        title: Text("Today's toon's",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
      body: FutureBuilder(future: webtoons, builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView(
              children: [
                for(var webtoon in snapshot.data!)
                  Text(webtoon.title),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
      }),
    );
  }
}
