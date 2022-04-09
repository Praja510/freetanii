import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/home/models/partners.dart';
import 'package:freetanii/home/widget/ItemCard.dart';
import 'package:freetanii/home/widget/SearchBar.dart';
import 'package:freetanii/profil/profile_screen.dart';

class PartnerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PartnerState();
}

class _PartnerState extends State<PartnerScreen> {

  List<String> images = <String>[
    'assets/images/corousel/img_6.jpeg',
    'assets/images/corousel/img_7.jpeg',
    'assets/images/corousel/img_8.jpeg',
    'assets/images/corousel/img_9.jpeg',
    'assets/images/partner/img_1.jpeg',
    'assets/images/partner/img_2.jpeg',
    'assets/images/partner/img_3.jpeg',
    'assets/images/partner/img_4.jpeg',
    'assets/images/partner/img_5.jpeg',
    'assets/images/corousel/img_6.jpeg',
    'assets/images/corousel/img_7.jpeg',
    'assets/images/corousel/img_8.jpeg',
    'assets/images/corousel/img_9.jpeg',
    'assets/images/partner/img_1.jpeg',
    'assets/images/partner/img_2.jpeg',
    'assets/images/partner/img_3.jpeg',
    'assets/images/partner/img_4.jpeg',
    'assets/images/partner/img_5.jpeg',
    'assets/images/corousel/img_6.jpeg',
    'assets/images/corousel/img_7.jpeg',
    'assets/images/corousel/img_8.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        title: Text(
          'Warung Rekanan',
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              ),
            },
            child: Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.only(
                right: 5,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(personImg),
                ),
              ),
            ),
          ),
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
              margin: EdgeInsets.only(
                right: 15,
              ),
              child: Image.asset(homeMiniIcon),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SearchBar(),
          // SizedBox(height: 20),
          Expanded(
            child: DragSelectGridView(
              itemCount: partners.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index, selected) => ItemCard(
                partner: partners[index],
                selected: selected,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        backgroundColor: Colors.teal[400],
        onPressed: () {
          showToast(
            'Please choose the partners',
            context: context,
            animation: StyledToastAnimation.fade,
            reverseAnimation: StyledToastAnimation.fade,
            position: StyledToastPosition.bottom,
            duration: Duration(seconds: 2),
          );
        },
      ),
    );
  }
}
