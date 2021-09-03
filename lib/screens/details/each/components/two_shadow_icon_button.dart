import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';

class TwoShadowIconButton extends StatelessWidget {
  final Function press;
  final IconData icon;

  const TwoShadowIconButton({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    return Container(
      height: 62, 
      width: 62,
      margin: const EdgeInsets.only(top: 15, bottom: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 7),
            blurRadius: 25,
            color: kPrimaryColor.withOpacity(0.25),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white
          )
        ]
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: kPrimaryColor,
          size: 39,
        ),
        onPressed: press,
      ),
    );
  }
}