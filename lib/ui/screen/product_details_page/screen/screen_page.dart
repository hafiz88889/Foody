import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/global_text.dart';
import 'package:foody/config/utils/image_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
import 'package:foody/ui/screen/product_details_page/widget/name_price_widget.dart';
import 'package:foody/ui/screen/product_details_page/widget/pizza_size_card.dart';
import 'package:foody/ui/screen/product_details_page/widget/row_info_chip.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgoroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 300,
            backgroundColor: MyColor.deepOrangeColor,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image(
                    image: AssetImage(MyImage.pizza),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.whiteColor),
                child: Icon(
                  Icons.arrow_back,
                  color: MyColor.blackColor,
                  size: 30,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.whiteColor),
                  child: Icon(
                    Icons.favorite_border,
                    color: MyColor.buttonColor,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: MyColor.whiteColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            MyText.dominos,
                            style: myTextStyle24,
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: MyColor.deepOrangeColor.withAlpha(100)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: MyColor.deepOrangeColor,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                MyText.rate,
                                style: myTextStyle14,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoChip(icon: Icons.access_time, title: MyText.time),
                        InfoChip(
                            icon: Icons.local_fire_department,
                            title: MyText.onefifty),
                        InfoChip(icon: Icons.location_on, title: MyText.km),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      MyText.description,
                      style: myTextStyle24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      MyText.descriptionall,
                      style: myTextStyle14,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      MyText.size,
                      style: myTextStyle20,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                     Row(
                      children: [
                        PizzaCard(isSelected: true, size: MyText.s),
                      const SizedBox(width: 12,),
                        PizzaCard(isSelected: false, size: MyText.m),
                        const SizedBox(width: 12,),
                        PizzaCard(isSelected: false, size: MyText.l),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Text(
                    MyText.extra,
                      style: myTextStyle20,
                    ),
                    const SizedBox(height: 12,),
                     NamePriceWidget(name: MyText.extraChese, price:  MyText.twoPrice),
                     NamePriceWidget(name:  MyText.masroom, price:  MyText.five),
                     NamePriceWidget(name:  MyText.cold, price:  MyText.one),
                    const SizedBox(height: 100,)

                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(5),
        height: 80,
        decoration: BoxDecoration(
         color: MyColor.whiteColor,
          boxShadow: [
            BoxShadow(color: MyColor.greyColor.withAlpha(200),
            spreadRadius: 1,
              blurRadius: 10,
              offset:const  Offset(0, -5)
            ),
          ],
          ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyText.totalPrice,style: myTextStyle14.copyWith(color: MyColor.greyColor),),
                Text(MyText.totalPriceTk,style: myTextStyle20.copyWith(color: MyColor.deepOrangeColor),)
              ],
            ),
            const SizedBox(width: 20,),
            Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.deepOrangeColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                    onPressed: (){}, 
                    child: Text(MyText.addToCart,style: myTextStyle18.copyWith(color: MyColor.whiteColor),)
                )
            ),
          ],
        ),
        ),
    );
  }
}
