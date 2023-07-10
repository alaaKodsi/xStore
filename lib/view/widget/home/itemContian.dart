import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      width: 190,
      decoration: BoxDecoration(
        color: Color.fromARGB(60, 255, 255, 255),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/newOffer.png",
            height: 150,
            width: 150,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HeadSet ROG ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "500\$",
                      style: TextStyle(fontSize: 17, color: Colors.green),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                iconSize: 20,
                color: Colors.white,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
