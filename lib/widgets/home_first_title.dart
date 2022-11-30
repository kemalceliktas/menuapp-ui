import 'package:flutter/material.dart';
import '../globalconst/color_palet.dart';
import '../globalconst/text_style.dart';

class FirstTitleSection extends StatelessWidget {
  const FirstTitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Menu",
          style: textStyle.titleBig,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Sort by",
                  style: textStyle.subTitle,
                ),
                Icon(
                  Icons.arrow_downward_sharp,
                  size: 14,
                  color: colorPalet.subtitleColor,
                )
              ],
            ),
            Text(
              "Popularity",
              style: textStyle.subTitle.copyWith(color: colorPalet.iconColor),
            )
          ],
        )
      ],
    );
  }
}
