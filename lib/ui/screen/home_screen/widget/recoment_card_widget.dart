import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class RecomentCardWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const RecomentCardWidget({super.key,
  required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: MyColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                color: MyColor.greyColor.withValues(alpha: 8),
                blurRadius: 5),
          ]),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
            child: Image(
              image: AssetImage(image),
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(child: Padding(
              padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: myTextStyle18.copyWith(fontSize: 16),),
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
                      width: 15,
                    ),
                    Text(
                      title3,
                      style: myTextStyle14.copyWith(
                          color: MyColor.greyColor, fontSize: 12),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
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
          )
          ),
        ],
      ),
    );
  }
}
