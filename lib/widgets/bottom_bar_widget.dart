import 'package:flutter/material.dart';

import '../globalconst/color_palet.dart';
import '../globalconst/text_style.dart';

class bottomBarWidget extends StatelessWidget {
  const bottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorPalet.bgColor.withOpacity(0.5),
                colorPalet.cardColor.withOpacity(0.9)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Type",
                style: textStyle.titleSmall.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: colorPalet.iconColor.withOpacity(0.5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: colorPalet.cardColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("assets/icons/organic.png"),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: colorPalet.iconColor.withOpacity(0.5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: colorPalet.cardColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("assets/icons/vegan.png"),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: colorPalet.iconColor.withOpacity(0.5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: colorPalet.cardColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset("assets/icons/natural.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}