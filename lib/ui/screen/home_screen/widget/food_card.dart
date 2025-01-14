import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;

  const FoodCard({
    super.key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: MyColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
        BoxShadow(
            color: MyColor.greyColor.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 5)
      ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
            child: Image(
                image: AssetImage(image),
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: myTextStyle18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title2,
                      style: myTextStyle14,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      title3,
                      style: myTextStyle14.copyWith(
                          color: MyColor.greyColor, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title4,
                      style: myTextStyle18.copyWith(
                          color: MyColor.deepOrangeColor),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: MyColor.deepOrangeColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.add,
                        color: MyColor.whiteColor,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
