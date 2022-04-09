import 'package:flutter/material.dart';
import 'package:freetanii/home/models/partners.dart';
import 'package:freetanii/home/widget/stars_review.dart';

class ItemCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardState();

  final Partner? partner;
  final Function? press;
  final bool? selected;
  final String? image;

  const ItemCard({
    Key? key,
    this.partner,
    this.press,
    this.selected,
    this.image,
  }) : super(key: key);
}

class _CardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 15),
        Container(
          height: 110,
          width: 115,
          decoration: BoxDecoration(
            color: widget.partner!.color,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Color(0x14000000),
                offset: Offset(
                  0,
                  2,
                ),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    widget.partner!.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      widget.partner!.title,
                      style:
                          TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      widget.partner!.description,
                      style: TextStyle(
                        fontSize: 8.5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              StarsReview()
            ],
          ),
        ),
      ],
    );
  }
}
