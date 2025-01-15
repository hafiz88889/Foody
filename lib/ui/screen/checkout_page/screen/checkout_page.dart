import 'package:flutter/material.dart';
import 'package:foody/config/utils/color_items.dart';
import 'package:foody/config/utils/text_style_items.dart';
import 'package:foody/ui/screen/cart_page/widget/bill_summery_card.dart';
import 'package:foody/ui/screen/checkout_page/widget/build_content.dart';
import 'package:foody/ui/screen/checkout_page/widget/build_item.dart';
import 'package:foody/ui/screen/checkout_page/widget/payment_option.dart';
import 'package:foody/ui/screen/checkout_page/widget/text_field.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgoroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgoroundColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
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
            Text("Check Out",style: myTextStyle20,)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BuildContent(title: "Order Summery", content:
                Column(
                  children: [
                    BuildItem(title: "Dominos Pizza", subtitle: "Large extra cheese", price: "\$9.99"),
                    Divider(height: 20,),
                    BuildItem(title: "Dominos Pizza", subtitle: "Large extra cheese", price: "\$9.99"),
                    Divider(height: 20,),
                    BuildItem(title: "Dominos Pizza", subtitle: "Large extra cheese", price: "\$9.99"),
                  ],
                ),
                ),
                const SizedBox(height: 15,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5,),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColor.whiteColor,
                      boxShadow: [
                        BoxShadow(
                            color: MyColor.greyColor,
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Payment Method",style:myTextStyle18 ,),
                      const SizedBox(height: 5,),
                      const  Row(
                        children:  [
                           PaymentOption(title: "Credit Card", icon: Icons.credit_card, isSelect: true),
                           PaymentOption(title: "Paypal", icon: Icons.credit_card, isSelect: false),
                          PaymentOption(title: "COD", icon: Icons.home, isSelect: false),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const TextFieldWidget(icon: Icons.credit_card, title: "Card number", title1: "XXXX-XXXX-XXXX"),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          Expanded(child:  TextFieldWidget(icon: Icons.date_range, title: "Experi date", title1: "MM/YY"),),
                          SizedBox(width: 16,),
                          Expanded(child:  TextFieldWidget(icon: Icons.lock, title: "CVV", title1: "XXX"),),
                        ],
                      ),
                      const TextFieldWidget(icon: Icons.person, title: "Card holder name", title1: "Enter card holder name"),
                      // if (PaymentOption == true)...[
                      //   TextFieldWidget(icon: Icons.credit_card)
                      // ]
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
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
                              },
                              child: Text("Process to Payment",style: myTextStyle18.copyWith(color: MyColor.whiteColor),)
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }

}
