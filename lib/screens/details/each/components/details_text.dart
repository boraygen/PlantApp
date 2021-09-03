import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/shared/constants.dart';

class DetailsText extends StatelessWidget {
  const DetailsText({
    Key key, this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // name and price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                plant.name,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 37,
                ),
              ),
              Text(
                "\$${plant.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor.withOpacity(0.8),
                  fontSize: 25,
                ),
              ),
            ],
          ),
          // country
          Row(
            children: [
              Text( 
                plant.country,
                style: TextStyle(
                  color: kPrimaryColor.withOpacity(0.6),
                  fontSize: 22,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],                   
      ),
    );
  }
}