import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mariam_resturant/foodlist.dart';

import 'main_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Food(),
          ListoFood()
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      elevation: 0,
      title: const Text("Mariam RestRAWRant",style: TextStyle(color: Colors.white, fontSize: 20),),
      leading: Row(
        children: [
          IconButton(onPressed: (){} ,icon: const Icon(Icons.pets)),
        ],
      ),
    );
  }
}
