import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:re_plant_app/models/plant/plant_list.dart';
import 'package:re_plant_app/screens/details/each/components/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:re_plant_app/screens/details/each_details_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({ Key key, this.page }) : super(key: key);

  final int page;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  int _activePage;

  @override
  Widget build(BuildContext context) {

    final controller = PageController(
      initialPage: widget.page
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.west, color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
        
      ),
      body: PageView.builder(
        itemCount: plantList.length,
        controller: controller,
        onPageChanged: (page) => setState(() 
          {
            _activePage = page;
            print("active: $_activePage\npage: $page");
          }
        ),
        itemBuilder: (context, index)
        {
          return EachDetailsScreen(
            plant: plantList[index],
          );
        },
      ),
      bottomNavigationBar: DetailsBottomNavBar(
        plant: plantList[_activePage ?? controller.initialPage],
        page: _activePage ?? controller.initialPage,
      ),
    );
  }
}
