import 'package:flutter/material.dart';
import 'package:re_plant_app/shared/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({Key key, this.title, this.press}) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleUnderlined(title: title),
          ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius:  BorderRadius.circular(20.0),
              ),
              fixedSize: const Size(88, 25),
              primary: kPrimaryColor,
            ),
            child: const Text("More")
          ),
        ],
      ),
    );
  }
}

class TitleUnderlined extends StatelessWidget {
  const TitleUnderlined({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            bottom: -3,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
