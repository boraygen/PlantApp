import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/models/plant/plant_list.dart';
import 'package:re_plant_app/shared/constants.dart';


class PlantCard extends StatelessWidget {
  const PlantCard({Key key, this.plant, this.press,}) : super(key: key);

  final Plant plant;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          width: 157,
          margin: const EdgeInsets.only(
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding,
            left: kDefaultPadding * 1.1,
          ),
          child: Column(
            children: [
              Image.asset(plant.imageSmall),  // image 
              GestureDetector( // plant info container
                onTap: press,
                child: Container(
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 15),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )
                  ),
                  child: Row( // texts
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // name and country
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plant.name.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text( 
                            plant.country.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.6),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      // price
                      Column(
                        children: [
                          Text(
                            "\$${plant.price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],                   
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
