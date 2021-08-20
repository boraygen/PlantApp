import 'package:flutter/material.dart';
import 'package:re_plant_app/screens/home/components/body.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );  
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        
        onPressed: ()
        {

        },  
      ),
    );
  }
}