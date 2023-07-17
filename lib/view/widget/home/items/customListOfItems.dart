// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:xstore/core/constant/linksApi.dart';
import 'package:xstore/data/model/itemsModel.dart';

class CustomListItems extends StatelessWidget {
  final ItmesModel itmesModel;
  const CustomListItems({
    Key? key,
    required this.itmesModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
          child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: "${LinkApi.imageItems}/${itmesModel.itemsImage!}",
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Text(itmesModel.itemsName!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Rating 3.5 ", textAlign: TextAlign.center),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 22,
                      child: Row(
                        children: [
                          ...List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star,
                                    size: 15,
                                  ))
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${itmesModel.itemsPrice} \$",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                        ))
                  ],
                )
              ]),
        ),
      )),
    );
  }
}
