import 'package:flutter/material.dart';

class StarsReview extends StatelessWidget {
  const StarsReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 8.5),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.grey[300],
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.grey[300],
          size: 12,
        ),
      ],
    );
  }
}