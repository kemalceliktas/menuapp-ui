import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../coredata/menu_items.dart';
import '../detail_screen.dart/product_detail.dart';
import '../globalconst/color_palet.dart';
import '../globalconst/text_style.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryData.menuItems.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  colorPalet.cardColor.withOpacity(0.9),
                  colorPalet.bgColor.withOpacity(0.9)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      LikeButton(
                        size: 25,
                        likeBuilder: (isLiked) {},
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      CategoryData.menuItems[index]["image"],
                      width: 120,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          CategoryData.menuItems[index]["name"],
                          style: textStyle.titleSmall.copyWith(fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("\$" + CategoryData.menuItems[index]["price"]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(CategoryData.menuItems[index]["calorie"]),
                                Image.asset(
                                  "assets/icons/kalori.png",
                                  width: 20,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                Text(CategoryData.menuItems[index]["time"]),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.timelapse,
                                  size: 16,
                                  color: colorPalet.iconColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                  name: CategoryData.menuItems[index]["name"],
                                  price: CategoryData.menuItems[index]["price"],
                                  calorie: CategoryData.menuItems[index]
                                      ["calorie"],
                                  description: CategoryData.menuItems[index]
                                      ["description"],
                                  time: CategoryData.menuItems[index]["time"],
                                  image: CategoryData.menuItems[index]["image"],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "Detail",
                            style: textStyle.subTitle,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GridView.builder(
                      itemCount: CategoryData.menuItems[index]["icons"].length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),
                      itemBuilder: (context, index2) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          child: Image.asset(
                            "${CategoryData.menuItems[index]["icons"][index2]}",
                            width: 20,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
