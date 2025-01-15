import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class BuildContent extends StatelessWidget {
  final String title;
  final Widget content;
  const BuildContent({super.key,
  required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: MyColor.greyColor,
            spreadRadius: 1,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: myTextStyle18,),
          const SizedBox( height: 15,),
          content,
        ],
      ),
    );
  }
}
