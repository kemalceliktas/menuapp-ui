import 'package:cafe_menu_app/widgets/home_first_title.dart';
import 'package:flutter/material.dart';
import '../globalconst/color_palet.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/category_widget.dart';
import '../widgets/main_card_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorPalet.bgColor,
        appBar: AppBar(
          backgroundColor: colorPalet.bgColor,
          elevation: 0,
          leading: Icon(
            Icons.menu_outlined,
            color: colorPalet.iconColor,
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FirstTitleSection(),
            ),
            CategoryWidget(),
            MainCardWidget(),
            bottomBarWidget(),
          ],
        )));
  }
}
