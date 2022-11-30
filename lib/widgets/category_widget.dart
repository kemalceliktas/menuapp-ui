import 'package:flutter/material.dart';
import '../coredata/menu_items.dart';

import '../globalconst/color_palet.dart';



class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CategoryData.category.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20,
                      ),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [
                      colorPalet.bgColor.withOpacity(0.9),
                      colorPalet.cardColor.withOpacity(0.9)
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
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        /*                           Text(CategoryData.category[index]["name"],style: textStyle.titleSmall.copyWith(fontSize: 20,fontWeight: FontWeight.bold),), */
                        Image.asset(
                          CategoryData.category[index]["logo"],
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
