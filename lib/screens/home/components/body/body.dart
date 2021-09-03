import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:re_plant_app/screens/home/components/body/custom_app_bar.dart';
import 'package:re_plant_app/screens/home/components/recently_featured_plants.dart';
import 'package:re_plant_app/screens/home/components/recommended_plants.dart';
import 'package:re_plant_app/screens/home/components/title_with_more_button.dart';
import 'package:re_plant_app/shared/constants.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          const CustomAppBar(),
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
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
      ),
    );
  }
}

