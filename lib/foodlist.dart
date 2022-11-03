import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'lists.dart';

class ListoFood extends StatelessWidget {
  const ListoFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
    ListView.builder(
        itemCount: FoodItems.length,
        itemBuilder: (context,index){
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(FoodItems[index].image))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FoodItems[index].name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(top: 10),
                              width: 180,
                              child: const Text(
                                "Rate This Product",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                                textAlign: TextAlign.start,
                              )),
                          const Text(
                            "Takol sawab3ak waraha <3",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                        ]),
                  )
                ],
              )
            ],
          );
        }));
  }
}
