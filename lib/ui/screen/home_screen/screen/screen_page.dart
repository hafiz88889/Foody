import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/global_text.dart';
import 'package:foody/config/utils/image_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
import 'package:foody/ui/screen/cart_page/screen/cart_page.dart';
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
            CircleAvatar(
              backgroundColor: MyColor.whiteColor,
              child: IconButton(
                onPressed: () {

                },
                icon: Image(
                  image: AssetImage(MyImage.menuIcon),
                  height: 25,
                  width: 25,
                  color: MyColor.blackColor,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: MyColor.whiteColor,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartPage()));
                },
                icon: Image(
                  image: AssetImage(MyImage.cardIcon),
                  height: 25,
                  width: 25,
                  color: MyColor.deepOrangeColor,
                ),
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
                MyText.deliciousFood,
                style: myTextStyle24,
              ),
              Text(
                MyText.delivery,
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
                      hintText: MyText.search,
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
                  children:  [
                    BuildCategoryShip(label: MyText.all, isSelect: true),
                    BuildCategoryShip(label: MyText.pizza, isSelect: false),
                    BuildCategoryShip(label: MyText.burger, isSelect: false),
                    BuildCategoryShip(label: MyText.chicken, isSelect: false),
                    BuildCategoryShip(label: MyText.sharma, isSelect: false),
                    BuildCategoryShip(label: MyText.drink, isSelect: false),


                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                MyText.popularNow,
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
                          title1: MyText.dominos,
                          title2: MyText.rate,
                          title3: MyText.time,
                          title4: MyText.price),
                    ),

                    FoodCard(
                        image: MyImage.burger,
                        title1: MyText.burger,
                        title2: MyText.rate,
                        title3: MyText.time,
                        title4: MyText.price),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                MyText.recommended,
                style: myTextStyle24,
              ),
              const SizedBox(height: 10,),
              RecomentCardWidget(image: MyImage.pizza, title1:  MyText.dominos, title2: MyText.rate, title3: MyText.time, title4: MyText.price1),
              RecomentCardWidget(image: MyImage.pizza, title1:  MyText.dominos, title2: MyText.rate, title3: MyText.time, title4: MyText.price1),
            ],
          ),
        ),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         padding: EdgeInsets.all(0),
      //         child: UserAccountsDrawerHeader(
      //             currentAccountPicture: Image.network("https://imgs.search.brave.com/Cn7cyXCzoAR4xcMUoRKzf_2iXHVrP3kn4zSwi-eImlM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY29udGVudHN0/YWNrLmlvL3YzL2Fz/c2V0cy9ibHRkZDk5/ZjI0ZThhOTRkNTM2/L2JsdGJjY2M2NzEw/ZWM1M2M5Y2MvNjc0/NzQwMjU0ZDdjNDM0/MzU1ZjYyODdkL2Jp/cnRoZGF5LWZsb3dl/cnMtc2lsby0xOTQy/MjktNDQweDQ0MC5q/cGc_YXV0bz13ZWJw",),
      //             accountName: Text("Md Alam",
      //               style: TextStyle(
      //                   fontFamily: "FontThird",
      //                   fontWeight:FontWeight.bold,
      //                   color: Colors.white,fontSize: 20),
      //             ),
      //             accountEmail: Text(
      //               "info@gmail.com",
      //               style: TextStyle(
      //                   fontFamily: "FontThird",
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                   fontSize: 15),
      //             )
      //
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(
      //             Icons.home
      //         ),
      //         title: Text(
      //           "Home",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){
      //           // Navigator.push(context, MaterialPageRoute(builder: (context)=>website()));
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(
      //           Icons.web,
      //         ),
      //         title: Text(
      //           "Website",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){ },
      //       ),
      //       ListTile(
      //         leading: Icon(
      //           Icons.phone,
      //         ),
      //         title: Text(
      //           "Cell",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){},
      //       ), ListTile(
      //         leading: Icon(
      //           Icons.content_copy,
      //         ),
      //         title: Text(
      //           "Blog",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){ },
      //       ), ListTile(
      //         leading: Icon(
      //           Icons.contacts,
      //         ),
      //         title: Text(
      //           "Contact",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){ },
      //       ), ListTile(
      //         leading: Icon(
      //           Icons.person,
      //         ),
      //         title: Text(
      //           "Profile",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
      //         ),
      //         onTap: (){ },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
