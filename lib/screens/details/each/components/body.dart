import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/screens/details/each/components/details_text.dart';
import 'package:re_plant_app/screens/details/each/components/image_and_icons.dart';

import 'package:re_plant_app/shared/constants.dart';


class Body extends StatelessWidget {
  const Body({ Key key, this.plant}) : super(key: key);

  final Plant plant;
  
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
            plant: plant,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.008,),
          DetailsText(
            plant: plant
          ),
        ],
      ),
    );
  }
}


