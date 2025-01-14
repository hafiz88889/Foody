import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
class NamePriceWidget extends StatelessWidget {
  final String name;
  final String price;
  const NamePriceWidget({super.key,
  required this.name,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 12),
    child: Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            border: Border.all(color: MyColor.greyColor.withAlpha(100)),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(Icons.add,color: MyColor.deepOrangeColor,size: 20,),
        ),
        const SizedBox(width: 12,),
        Text(name,style: myTextStyle14,),
        const Spacer(),
        Text(price,style: myTextStyle14,)
      ],
    ),
    );
  }
}
