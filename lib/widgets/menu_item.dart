import 'package:flutter/material.dart';
import 'package:coffee_app/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: mPrimaryTextColor.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 55,
              height: 55,
              child: SvgPicture.asset('assets/${coffeeNames[index]}.svg'),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Text(
                coffeeNames[index],
                style: TextStyle(
                  color: mTitleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: mPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}