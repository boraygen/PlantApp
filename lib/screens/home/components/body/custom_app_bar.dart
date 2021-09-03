import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
        ),
      ),
      elevation: 0,
      expandedHeight: 120,
      centerTitle: true,
      pinned: true,
      floating: true,
      title:  Container( //hi uishopy + picture
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding * 0.2,
        ),
        height: size.height *0.2,
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
        ),
        child: Row(   // hi uishopy + logo
          children: [
            Text(
              "Hi Uishopy!",
              style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Image.asset(
              "assets/images/logo.png",
              scale: 1.3,
            ),
          ],
        ),
      ),
      bottom: AppBar( //search bar
        toolbarHeight: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        title: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 5),
          height: 46,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.31),
              ),
            ],
          ),
          child: TextField( //search bar textfield
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: kPrimaryColor.withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                color: kPrimaryColor.withOpacity(0.7),
                size: 30,
              ),
            ),
          ),           
        ),
      )
    );
  }
}
