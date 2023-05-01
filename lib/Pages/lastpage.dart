import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customs/lastwidget.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://wallpaperaccess.com/full/3122435.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Positioned(
            top: 220,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(187, 159, 133, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 25),
                        child: Text(
                          "Related for you",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        setData(id: 5),
                        setData(id: 6),
                        setData(id: 7),
                        setData(id: 8),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 360, left: 20),
                    child: Text(
                      "Quick categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              color: const Color.fromRGBO(236, 213, 186, 1),
                              child: const Icon(
                                CupertinoIcons.ant_fill,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Ant",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              color: const Color.fromRGBO(236, 213, 186, 1),
                              child: const Icon(
                                CupertinoIcons.ant,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Red Ant",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              color: const Color.fromRGBO(236, 213, 186, 1),
                              child: const Icon(
                                CupertinoIcons.ant_circle,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Lal Makodo",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400, left: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              color: const Color.fromRGBO(236, 213, 186, 1),
                              child: const Icon(
                                CupertinoIcons.ant_circle_fill,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Makodo",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
