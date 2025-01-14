import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/image_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
import 'package:foody/ui/screen/home_screen/widget/buildCategoryship.dart';
import 'package:foody/ui/screen/home_screen/widget/food_card.dart';
import 'package:foody/ui/screen/home_screen/widget/recoment_card_widget.dart';
import 'package:foody/ui/screen/product_details_page/screen/screen_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgoroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgoroundColor,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage(MyImage.menuIcon),
                height: 25,
                width: 25,
                color: MyColor.blackColor,
              ),
            ),
            IconButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>CardPage()));
              },
              icon: Image(
                image: AssetImage(MyImage.cardIcon),
                height: 25,
                width: 25,
                color: MyColor.deepOrangeColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delicious Food",
                style: myTextStyle24,
              ),
              Text(
                "Delivery to your door",
                style: myTextStyle14.copyWith(
                    color: MyColor.greyColor, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: MyColor.greyColor,
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search here...",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image(
                          image: AssetImage(MyImage.searchIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.blackColor,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image(
                          image: AssetImage(MyImage.filterIcon),
                          height: 20,
                          width: 20,
                          color: MyColor.blackColor,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BuildCategoryship(label: "All", isSelect: true),
                    BuildCategoryship(label: "Pizza", isSelect: false),
                    BuildCategoryship(label: "Burger", isSelect: false),
                    BuildCategoryship(label: "Chicken", isSelect: false),
                    BuildCategoryship(label: "Sharma", isSelect: false),
                    BuildCategoryship(label: "Drink", isSelect: false),


                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Popular Now",
                style: myTextStyle24,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailsPage()));},
                      child: FoodCard(
                          image: MyImage.pizza1,
                          title1: "Dominos Pizza",
                          title2: "4.5",
                          title3: "15-25 minuts",
                          title4: "\$12.99"),
                    ),

                    FoodCard(
                        image: MyImage.pizza1,
                        title1: "Dominos Pizza",
                        title2: "4.5",
                        title3: "15-25 minuts",
                        title4: "\$12.99"),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Recommended ",
                style: myTextStyle24,
              ),
              const SizedBox(height: 10,),
              RecomentCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "4.5", title3: "10-25 min", title4: "\$9.99"),
              RecomentCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "4.5", title3: "10-25 min", title4: "\$9.99"),
            ],
          ),
        ),
      ),
    );
  }
}
