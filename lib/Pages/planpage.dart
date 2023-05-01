import 'package:flutter/material.dart';

import '../customs/mywidget.dart';
import 'lastpage.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LastPage()));
        },
        backgroundColor: const Color.fromRGBO(236, 213, 186, 1),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(187, 159, 133, 1),
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Column(
                        children: const [
                          Text(
                            "aplanet",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(228, 208, 180, 1),
                            ),
                          ),
                          Text(
                            "We love the planet",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(250, 236, 223, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25, left: 15),
                      child: Text(
                        "Choose a plan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    getData(id: 1),
                    getData(id: 2),
                    getData(id: 3),
                    getData(id: 4),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 20, bottom: 20),
                      child: Text(
                        "Last step to enjoy",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 330),
                child: IconButton(
                  alignment: const Alignment(20, 40),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(250, 236, 223, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
