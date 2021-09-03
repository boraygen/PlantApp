import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant_list.dart';
import 'package:re_plant_app/models/plant_card.dart';
import 'package:re_plant_app/screens/details/details_screen.dart';
import 'package:re_plant_app/shared/constants.dart';


class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: kDefaultPadding / 2),
        scrollDirection: Axis.horizontal,
        itemCount: plantList.length,
        itemBuilder: (context, index)
        {
          return PlantCard(
            //number: index,
            plant: plantList[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(page: index) 
              ),  
            ),
          );
        },
      ),
    );
  }
}