import 'package:flutter/material.dart';
import 'package:coffee_app/constants/constants.dart';
import 'package:coffee_app/widgets/menu_item.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(
        itemCount: coffeeNames.length,
        itemBuilder: (context, index) => MenuItem(index: index,),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Menu',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

