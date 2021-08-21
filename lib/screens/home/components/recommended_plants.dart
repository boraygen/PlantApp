import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant_card.dart';


class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            image: "assets/images/image_1.png",
            name: "samantha",
            country: "russia",
            price: 169.49,
            press: ()  => print("samantha"),
          ),
          PlantCard(
            image: "assets/images/image_2.png",
            name: "angelica",
            country: "poland",
            price: 179.99,
            press: () => print("angelica"),
          ),
          PlantCard(
            image: "assets/images/image_3.png",
            name: "niki",
            country: "brazil",
            price: 89.49,
            press: () => print("niki"),
          ),
          const SizedBox(width: 15,)
        ],
      ),
    );
  }
}