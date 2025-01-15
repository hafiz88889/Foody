import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/image_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
import 'package:foody/ui/screen/cart_page/widget/bill_summery_card.dart';
import 'package:foody/ui/screen/cart_page/widget/order_items_card_widget.dart';
import 'package:foody/ui/screen/checkout_page/screen/checkout_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgoroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColor.backgoroundColor,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
              padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MyColor.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: MyColor.greyColor,
                      spreadRadius: 1,
                      blurRadius: 1,

                    )
                  ]
                ),
                child: Icon(Icons.arrow_back,color: MyColor.blackColor,),
              ),
            ),
            const SizedBox(width: 20,),
            Text("My Cart",style: myTextStyle20,)
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child:Padding(
                padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.greyColor.withAlpha(300),
                        spreadRadius: 1,
                        blurRadius: 5
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Address",style: myTextStyle18,),
                          TextButton(onPressed: (){}, child: Text("Change",style: myTextStyle14.copyWith(color: MyColor.deepOrangeColor),),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MyColor.deepOrangeColor.withAlpha(50)
                            ),
                            child: Icon(Icons.location_on,color: MyColor.deepOrangeColor,size: 25,),
                          ),
                          const SizedBox(width: 12,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Home",style: myTextStyle18,),
                              Text("123 ABC Avinue,Dhaka",style: myTextStyle14.copyWith(color: MyColor.greyColor,height: 1.5),),
                            ],
                          ),
                        )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Text("Order Item",style: myTextStyle18,),
                const SizedBox(height: 10,),
                OrderItemsCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "Large size extra cheese", title3: "\$9.99", title4: "1"),
                OrderItemsCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "Large size extra cheese", title3: "\$9.99", title4: "1"),
                OrderItemsCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "Large size extra cheese", title3: "\$9.99", title4: "1"),
                OrderItemsCardWidget(image: MyImage.pizza, title1: "Dominos Pizza", title2: "Large size extra cheese", title3: "\$9.99", title4: "1"),
              ],
            ),
            ) ,
          ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: MyColor.greyColor,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, -5)
                )
              ],
              color: MyColor.whiteColor,

            ),
            child: Column(
              children: [
                const BillSummeryCard(title1: "Subtotal", title2: '\$189.50',isSelect: false,),
                const SizedBox(height: 8,),
                const  BillSummeryCard(title1: "Delivery fee", title2: '\$12.50',isSelect: false,),
                const SizedBox(height: 8,),
                const   BillSummeryCard(title1: "Tax", title2: '\$9.50',isSelect: false,),
                const  Divider(height: 50,),
                const  BillSummeryCard(title1: "Total", title2: '\$220',isSelect: true,),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColor.deepOrangeColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(vertical: 16),

                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckoutPage()));
                        },
                        child: Text("Process to Payment",style: myTextStyle18.copyWith(color: MyColor.whiteColor),)
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
