import 'package:flutter/material.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/home/widget/detail_order.dart';

class BottomNavigationOS extends StatelessWidget {
  const BottomNavigationOS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight / 11,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            offset: Offset(
              3,
              0,
            ),
            blurRadius: 6,
            spreadRadius: 8,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: SizeConfig.screenWidth / 10),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailOrder(),
                ),
              ),
            },
            child: Container(
              height: SizeConfig.screenHeight / 20,
              width: SizeConfig.screenWidth / 2.1,
              decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: Center(
                child: Text(
                  'Terima',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
            },
            child: Container(
              height: SizeConfig.screenHeight / 20,
              width: SizeConfig.screenWidth / 3.5,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              child: Center(
                child: Text(
                  'Tolak',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}