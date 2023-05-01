import 'package:flutter/material.dart';
import 'package:test_eca/Data/data.dart';

Widget setData({required id}) {
  return Builder(
    builder: (context) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                // color: Colors.white,
              ),
              child: Stack(
                children: animal1
                    .map(
                      (e) => (e['id'] == id)
                          ? Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.28,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e['image'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                    // color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 190),
                                    child: Text(e['Name'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                ),
                                // Text(
                                //   e['Name'],
                                // ),
                              ],
                            )
                          : Container(),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      );
    },
  );
}
