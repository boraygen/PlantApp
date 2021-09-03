import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/shared/constants.dart';


class DetailsBottomNavBar extends StatelessWidget {
  const DetailsBottomNavBar({
    Key key, this.plant, this.page
  }) : super(key: key);

  final Plant plant;
  final int page;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(  // buy now button
          height: size.height * 0.1,
          width: size.width * 0.5,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
          ),
          child: TextButton(
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            onPressed: (){},
          ),
        ),
        Container(  // description button
          height: size.height * 0.1,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20)),
            border: Border.all(
              color: kPrimaryColor.withOpacity(0.4),
              width: 0.4
            ),
          ),
          child: TextButton(
            child: const Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            onPressed: () => showModalBottomSheet( // description bottom sheet
              context: context,
              constraints: BoxConstraints(
                maxWidth: size.width - (1.7 * kDefaultPadding),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)  
                ),
              ),
              builder: (BuildContext context)
              {
                return GestureDetector( // description container
                  onTap: () => Navigator.pop(context),
                  child: Container( 
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding * 0.6,  
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Row(  // plant title + country
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                plant.name,
                                style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, bottom: 8),
                            child: Text(
                              plant.description,
                              style: const TextStyle(
                                fontSize: 16
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ),
      ],
    );
  }
}
