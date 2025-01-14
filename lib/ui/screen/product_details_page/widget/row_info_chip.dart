import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String title;
  const InfoChip({super.key,
  required this.icon,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColor.greyColor.withAlpha(100),
      ),
      child: Row(
        children: [
          Icon(icon,color: MyColor.deepOrangeColor.withAlpha(1000),size: 20,),
          const SizedBox(width: 4,),
          Text(title,style: myTextStyle14,)
        ],
      ),
    );
  }
}
