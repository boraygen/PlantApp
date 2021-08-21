import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.3),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.grass_sharp, 
              color: kPrimaryColor,
              size: 29,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined, 
              color: kPrimaryColor,
              size: 29,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.person_outline_sharp, 
              color: kPrimaryColor,
              size: 29,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}