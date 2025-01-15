import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';

class OrderItemsCardWidget extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  const OrderItemsCardWidget({super.key,
  required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: MyColor.whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: MyColor.greyColor,
                spreadRadius: 1,
                blurRadius: 2,
            )
          ]

      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(image: AssetImage(image),height: 80,width: 80,fit: BoxFit.cover,),
          ),
          const SizedBox(width: 8,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: myTextStyle14.copyWith(fontSize: 16),),
                const SizedBox(height: 5,),
                Text(title2,style: myTextStyle14.copyWith(fontSize: 12,color: MyColor.greyColor),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title3,style: myTextStyle18.copyWith(color: MyColor.deepOrangeColor),),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: MyColor.greyColor.withAlpha(80)
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, iconSize: 20, icon: const Icon(Icons.remove),color: MyColor.redColor,),
                          Text(title4,style: myTextStyle14,),
                          IconButton(onPressed: (){},iconSize: 20, icon: const Icon(Icons.add),color: MyColor.redColor,),

                        ],
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
