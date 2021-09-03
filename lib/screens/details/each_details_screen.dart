import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant.dart';
import 'package:re_plant_app/screens/details/each/components/body.dart';
import 'package:re_plant_app/shared/constants.dart';

class EachDetailsScreen extends StatefulWidget {
  const EachDetailsScreen({ Key key, this.plant}) : super(key: key);

  final Plant plant;

  @override
  _EachDetailsScreenState createState() => _EachDetailsScreenState();
}

class _EachDetailsScreenState extends State<EachDetailsScreen> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body(
        plant: widget.plant,
      ),
      bottomSheet: Container(
        width: 12
      ),
      
    );
  }
}
