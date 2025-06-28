import 'package:flutter/material.dart';
import 'package:projets/services/api_service.dart';
import 'package:projets/models/webtoon_model.dart';
import 'dart:io';

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
            return Column(
              children: [
                SizedBox(height: 50,),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
      }),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
            itemBuilder: (context, index){
              var webtoon = snapshot.data![index];
              return Column(
                children: [
                 Container(
                   width: 250,
                   clipBehavior: Clip.hardEdge,
                   decoration: 
                    BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(10, 10),
                          color: Colors.black.withOpacity(0.5)
                        )
                      ]
                    ),
                   child: Image.network(
                     webtoon.thumb,
                     headers: const {
                       'Referer': 'https://comic.naver.com',
                     },
                   ),
                 ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(webtoon.title,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index)=>SizedBox(width: 40,),
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          );
  }
}
