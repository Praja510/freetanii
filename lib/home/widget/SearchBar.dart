import 'package:flutter/material.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenWidth / 6.5,
      width: SizeConfig.screenHeight / 1.9,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
      ),
      child: Row(
        children: [
          SizedBox(width: 17),
          Container(
            height: SizeConfig.screenHeight / 30,
            width: SizeConfig.screenWidth / 12,
            decoration: BoxDecoration(
              color: Colors.teal[400],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Icon(
              Icons.search,
              color: Color(whiteCustom),
              size: 20,
            ),
          ),
          Container(
            height: SizeConfig.screenHeight / 30,
            width: SizeConfig.screenWidth / 2.7,
            child: TextField(
              maxLength: 17,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                counterText: "",
                fillColor: Color(whiteCustom),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.where_to_vote_rounded,
            size: 23,
            color: Colors.black45,
          ),
          SizedBox(width: 5),
          Text("RT"),
          SizedBox(width: 5),
          Container(
            height: SizeConfig.screenHeight / 30,
            width: SizeConfig.screenWidth / 9,
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 2,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                counterText: "",
                fillColor: Color(whiteCustom),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(width: 5),
          Text("RW"),
          SizedBox(width: 5),
          Container(
            height: SizeConfig.screenHeight / 30,
            width: SizeConfig.screenWidth / 9,
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 2,
              textAlignVertical: TextAlignVertical.center,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                counterText: "",
                fillColor: Color(whiteCustom),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
