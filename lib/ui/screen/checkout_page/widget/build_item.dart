import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
class BuildItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  const BuildItem({super.key,
  required this.title,
  required this.subtitle,
  required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: myTextStyle14,),
            Text(subtitle,style: myTextStyle14.copyWith(fontSize: 12,color: MyColor.greyColor),),
          ],
        ),
        ),
        Text(price,style: myTextStyle18.copyWith(color: MyColor.deepOrangeColor),)
      ],
    );
  }
}
