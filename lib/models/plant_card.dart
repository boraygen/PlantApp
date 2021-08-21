import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';


class PlantCard extends StatelessWidget {
  const PlantCard({Key key, this.image, this.name, this.country, this.price, this.press,}) : super(key: key);

  final String image, name, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding,
        left: kDefaultPadding * 2.5,
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
              child: Column(
                // children: [
                //   RichText(
                //     text: TextSpan(
                //       children: [
                //         TextSpan(
                //           text: "samantha\n".toUpperCase(),
                //           style: Theme.of(context).textTheme.button,
          
                //         ),
                //         TextSpan(
                //           text: "russia".toUpperCase(),
                //           style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
          
                //         ),
                //       ]
                //     )
                //   ),
                //   Text(
                //     "\$400",
                //     style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                //   )
                // ],
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2,),
                  Row(
                    children: [
                      Text(
                        country.toUpperCase(),
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: kPrimaryColor.withOpacity(0.6),
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
