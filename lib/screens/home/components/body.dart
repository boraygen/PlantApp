import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:re_plant_app/screens/home/components/header_with_search_bar.dart';
import 'package:re_plant_app/screens/home/components/recently_featured_plants.dart';
import 'package:re_plant_app/screens/home/components/recommended_plants.dart';
import 'package:re_plant_app/screens/home/components/title_with_more_button.dart';
import 'package:re_plant_app/shared/constants.dart';


class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          const SizedBox(height: 6,),
          TitleWithMoreButton(
            title: "Recommended",
            press: () => print("more1"),
          ),
          const RecommendedPlants(),
          const SizedBox(height: 10,),
          TitleWithMoreButton(
            title: "Recently Featured",
            press: ()  => print("more2"),
          ),
          const RecentlyFeaturedPlants(),
        ]
      ),
    );
  }
}

