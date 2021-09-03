import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/screens/details/each/components/two_shadow_icon_button.dart';
import 'package:re_plant_app/shared/constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key, this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height* 0.74,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.4,),
              child: Column(
                children: [
                  const Spacer(),
                  TwoShadowIconButton(
                    icon: Icons.light_mode_outlined,
                    press: (){},
                  ),
                  TwoShadowIconButton(
                    icon: Icons.thermostat,
                    press: (){},
                  ),
                  TwoShadowIconButton(
                    icon: Icons.invert_colors_outlined,
                    press: (){},
                  ),
                  TwoShadowIconButton(
                    icon: Icons.air,
                    press: (){},
                  ),
                ],
              ),
            ),
          ),
          Container(  //picture
            height: size.height * 0.8,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                topLeft: Radius.circular(60)
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(-5, 35),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.21),
                )
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
                image: AssetImage(plant.imageBig),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
