import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class BillSummeryCard extends StatelessWidget {
  final String title1;
  final String title2;
   final bool isSelect ;

  const BillSummeryCard({super.key,
    required this.title1,
    required this.title2,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title1, style: myTextStyle14.copyWith(
            color: isSelect ? MyColor.blackColor : MyColor.greyColor,
            fontWeight: isSelect ? FontWeight.bold : FontWeight.normal,fontSize: isSelect? 18:14),),

        Text(title2, style: myTextStyle14.copyWith(
            color: isSelect ? MyColor.deepOrangeColor : MyColor.blackColor,
            fontWeight: isSelect ? FontWeight.bold : FontWeight.normal,fontSize: isSelect? 18:14),),

      ],
    );
  }
}
