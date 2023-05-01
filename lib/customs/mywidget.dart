import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data/data.dart';

Widget getData({required id}) {
  return Builder(builder: (context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              color: CupertinoColors.white,
            ),
            child: Stack(
              children: animal
                  .map(
                    (e) => (e['id'] == id)
                        ? Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(e['image']),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  top: 40,
                                  right: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "${e['plan']}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$ ${e['price'].toString()}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                    // Text(
                                    //   e['price'],
                                    //   // style: TextStyle(
                                    //   //   color: Colors.white,
                                    //   //   fontWeight: FontWeight.bold,
                                    //   //   fontSize: 20,
                                    //   // ),
                                    // ),
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container(),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  });
}
