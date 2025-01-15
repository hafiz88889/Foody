import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class TextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String title1;
  const TextFieldWidget({super.key,
  required this.icon,
    required this.title,
    required this.title1
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: myTextStyle14,),
        TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.deepOrangeColor),borderRadius: BorderRadius.circular(12)),
            hintText: title1,
            prefixIcon: Icon(icon,color: MyColor.deepOrangeColor,size: 25,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: MyColor.greyColor.withAlpha(80))
            )

          ),
        ),
      ],
    );
  }
}
