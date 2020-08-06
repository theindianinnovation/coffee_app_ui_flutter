import 'package:flutter/material.dart';
import 'package:coffee_app/location.dart';
import 'package:coffee_app/menu_list.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=>new HomePageState();
}
class HomePageState extends State<HomePage>{
  int tabIndex = 0;
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      MenuScreen(),
      LocationPage(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: listScreens[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.grey[400],
            backgroundColor: Colors.white,
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(LineIcons.coffee),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.location_arrow),
                title: Text(''),
              ),
            ]),
        backgroundColor:Colors.white,
    );
  }
}