import 'package:flutter/material.dart';
import 'package:coffee_app/widgets/address.dart';
import 'package:coffee_app/widgets/my_line.dart';
import 'package:coffee_app/widgets/store_name.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/map.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                ),
              ),
              child: Column(
                children: <Widget>[
                  MyLine(),
                  StoreName(),
                  Address()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

