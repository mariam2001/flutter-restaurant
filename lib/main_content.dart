import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mariam_resturant/favourites.dart';
import 'package:mariam_resturant/lists.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Image.asset("assets/lion.png"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Favourites()),
              );
            }, child: Text("click here to view favourite dishes!", style: TextStyle(backgroundColor: Colors.pinkAccent,color: Colors.black,fontSize: 25),)),
          )
        ],
      ),
    );
  }
}
