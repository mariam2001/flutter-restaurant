import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mariam_resturant/home_page.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          Text("PURRito!!", style: TextStyle(fontSize: 30),),
          Padding(padding: EdgeInsets.only(top: 30)),
          Stack(
            children: [
              Image.asset("assets/Burrito.JPG"),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_rounded),color: Colors.red,iconSize: 30,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Review", style: TextStyle(fontSize: 20, color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("First time in Mariam RestRAWRant and YOU have to go! It’s the cutest little spot with amazing food. The PURRito is to die for. IT WAS FIRE!! The service we received was so amazing and we will definitely be back again. They made us feel welcomed and gave us an amazing experience. and as mentioned we did IN FACT akalna sawabe3na waraha :D",
            style: TextStyle(color: Colors.blueGrey),),
          )
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
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } ,icon: const Icon(Icons.pets)),
        ],
      ),
    );
  }
}
