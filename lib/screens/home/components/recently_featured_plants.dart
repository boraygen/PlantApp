import 'package:flutter/material.dart';
import 'package:re_plant_app/screens/home/components/featured_plant_card.dart';
import 'package:re_plant_app/shared/constants.dart';

class RecentlyFeaturedPlants extends StatelessWidget {
  const RecentlyFeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () => print("recent"),  
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () => print("recent"),  
          ),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
}