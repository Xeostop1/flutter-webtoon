import 'package:flutter/material.dart';
import 'package:projets/models/webtoon_model.dart';
import 'package:projets/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WebtoonModel> webtoons =[];
  bool isLoading =true;

  void waitForWebToons() async{
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);


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
    );
  }
}
