import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';


class PlantCard extends StatelessWidget {
  const PlantCard({Key key, this.image, this.name, this.country, this.price, this.press,}) : super(key: key);

  final String image, name, country;
  final double price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding,
        left: kDefaultPadding * 1.4,
      ),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name and country
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text( 
                        country.toUpperCase(),
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
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
                        "\$$price",
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
    );
  }
}
