import 'package:flutter/material.dart';
import 'package:re_plant_app/components/bottom_nav_bar.dart';
import 'package:re_plant_app/screens/home/components/body/body.dart';

class SliverHome extends StatefulWidget {
  const SliverHome({Key key,}) : super(key: key);

  @override
  _SliverHomeState createState() => _SliverHomeState();
}

class _SliverHomeState extends State<SliverHome>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 45,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          size: 25,
        ),
        onPressed: ()
        {

        },  
      ),
    );
  }
}


