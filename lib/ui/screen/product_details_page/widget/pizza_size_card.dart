import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class PizzaCard extends StatelessWidget {
  final String size;
  final bool isSelected;
  const PizzaCard({super.key,
  required this.isSelected,
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isSelected ? MyColor.deepOrangeColor : MyColor.greyColor),
        child: Center(
          child: Text(
            size,
            style: myTextStyle14.copyWith(
                color: isSelected ? MyColor.whiteColor : MyColor.blackColor),
          ),
        ),
      ),
    );
  }
}
