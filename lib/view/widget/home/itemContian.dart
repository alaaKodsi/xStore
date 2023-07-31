// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

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
              color: Color(0xff9b9fbd),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: imageName,
                  height: 150,
                  width: 150,
                ),
                Positioned(
                    bottom: 5,
                    right: -10,
                    child: IconButton(
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded)))
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
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
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: primryColor,
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
