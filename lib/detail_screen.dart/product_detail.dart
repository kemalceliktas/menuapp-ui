import 'package:cafe_menu_app/globalconst/color_palet.dart';
import 'package:cafe_menu_app/globalconst/text_style.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.calorie,
    required this.description,
    required this.time,
    required this.image,
  });
  final String name;
  final String price, calorie, description, time, image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPalet.bgColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: colorPalet.iconColor,
          ),
        ),
      ),
      backgroundColor: colorPalet.bgColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset(image),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: textStyle.titleSmall
                          .copyWith(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timelapse_outlined,
                          color: colorPalet.subtitleColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          time + "min",
                          style: textStyle.subTitle,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    description,
                    style: textStyle.normalText
                        .copyWith(fontSize: 18, color: colorPalet.textColor),
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: colorPalet.subtitleColor,
                          ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Text(
                            calorie,
                            style: textStyle.normalText.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/icons/kalori.png",
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: textStyle.titleBig.copyWith(
                            fontSize: 15,
                            color: colorPalet.iconColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$ " + price + ".00",
                          style: textStyle.titleBig.copyWith(
                            fontSize: 18,
                            color: colorPalet.iconColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    LikeButton(
                      size: 30,
                    ),
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
