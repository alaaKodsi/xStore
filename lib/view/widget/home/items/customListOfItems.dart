// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:xstore/core/constant/color.dart';

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
        color: Color(0xff232a39),
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff9b9fbd),
                      borderRadius: BorderRadius.circular(10)),
                  height: 170,
                  width: 150,
                  child: CachedNetworkImage(
                    imageUrl: "${LinkApi.imageItems}/${itmesModel.itemsImage!}",
                    height: 70,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(itmesModel.itemsName!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("${itmesModel.itemsPrice} \$",
                            style: const TextStyle(
                              color: primryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              color: Colors.white,
                              Icons.favorite_border,
                            ))
                      ],
                    )
                  ],
                )
              ]),
        ),
      )),
    );
  }
}
