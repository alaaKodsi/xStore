// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String imageName;
  final String nameItem;
  final String price;
  final void Function()? onPressedIcon;

  // final Double price;
  const ItemContainer({
    Key? key,
    required this.imageName,
    required this.nameItem,
    required this.price,
    this.onPressedIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: const Color.fromARGB(230, 255, 255, 255),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Image.network(
                  imageName,
                  height: 150,
                  width: 150,
                ),
                Positioned(
                    bottom: 5,
                    right: -10,
                    child: IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded)))
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: -1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        nameItem,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}