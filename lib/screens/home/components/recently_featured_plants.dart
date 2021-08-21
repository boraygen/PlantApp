import 'package:flutter/material.dart';
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

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key, this.image, this.press
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding, 
          top: kDefaultPadding / 1.5, 
          bottom: kDefaultPadding
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
