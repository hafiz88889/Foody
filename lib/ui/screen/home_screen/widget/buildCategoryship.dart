import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';

class BuildCategoryship extends StatelessWidget {
  final String label;
  final bool isSelect;
  const BuildCategoryship({super.key,
  required this.label,
    required this.isSelect
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Chip(
        backgroundColor:
        isSelect ? MyColor.deepOrangeColor : MyColor.whiteColor,
        label: Text(label,
            style: TextStyle(
              color: isSelect ? MyColor.whiteColor : MyColor.blackColor,
            )),
      ),
    );
  }
}
