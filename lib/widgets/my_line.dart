import 'package:flutter/material.dart';
import 'package:coffee_app/constants/constants.dart';

class MyLine extends StatelessWidget {
  const MyLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 5,
      decoration: BoxDecoration(
        color: mTitleTextColor,
        borderRadius: BorderRadius.circular(2.5),
      ),
    );
  }
}
