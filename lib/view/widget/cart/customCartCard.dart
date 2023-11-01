import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';
import 'package:xstore/core/constant/imageApp.dart';

class CoustomCartCard extends StatelessWidget {
  const CoustomCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: secondColors,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            height: 150,
            width: 150,
            child: Row(
              children: [
                Expanded(flex: 2, child: Image.asset(ImageApp.profile)),
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Galaxy A20 Por Max Lite 5G",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            " mobile",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "\$299.59",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: IconButton(
                                          color: Colors.black54,
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateColor
                                                      .resolveWith((states) =>
                                                          Colors.grey)),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.remove,
                                            size: 20,
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: IconButton(
                                          color: Colors.black54,
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateColor
                                                      .resolveWith((states) =>
                                                          Colors.grey)),
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 20,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
