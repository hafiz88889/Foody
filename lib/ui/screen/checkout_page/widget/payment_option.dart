import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class PaymentOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool  isSelect;
  const PaymentOption({super.key,
  required this.title,
  required this.icon,
    required this.isSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:105,
      margin:const EdgeInsets.only(right: 10),
      padding:const  EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelect? MyColor.deepOrangeColor:MyColor.whiteColor,
        border: Border.all(
          color: isSelect? MyColor.deepOrangeColor:MyColor.greyColor
        )
      ),
      child: Column(
        children: [
          Icon(icon,color: isSelect? MyColor.whiteColor:MyColor.greyColor,),
          Text(title,style: myTextStyle14.copyWith(color: isSelect? MyColor.whiteColor:MyColor.greyColor),)
        ],
      ),
    );
  }
}
