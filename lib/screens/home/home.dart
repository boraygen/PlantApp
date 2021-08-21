import 'package:flutter/material.dart';
import 'package:re_plant_app/components/bottom_nav_bar.dart';
import 'package:re_plant_app/screens/home/components/body.dart';


class Home extends StatelessWidget {
  const Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
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
