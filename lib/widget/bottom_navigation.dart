import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/home/activity/kurir_setting_screen.dart';
import 'package:freetanii/home/activity/order_screen.dart';
import 'package:freetanii/home/activity/partner_screen.dart';
import 'package:freetanii/profil/profile_screen.dart';

class BottomNavigationCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, -20),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: ShapeDecoration(
          color: Colors.teal[800],
          shape: MyBorderShape(),
          shadows: [
            BoxShadow(
                color: Colors.black38, blurRadius: 8.0, offset: Offset(1, 1)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => CourierSettings()),
                    (route) => true);
              },
              child: Container(
                height: 58,
                width: 60,
                child: Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.waves_rounded,
                        size: 18,
                        color: Color(whiteCustom),
                      ),
                      Text(
                        'Pengaturan',
                        style: TextStyle(
                          fontSize: 7,
                          color: Color(whiteCustom),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => OrderScreen()),
                    (route) => true);
              },
              child: Container(
                height: 55,
                width: 55,
                margin: EdgeInsets.only(left: 10),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wallet_giftcard_rounded,
                        size: 18,
                        color: Color(whiteCustom),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Pesanan',
                        style: TextStyle(
                          fontSize: 8,
                          color: Color(whiteCustom),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildMiddleTabItem(),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => PartnerScreen()),
                    (route) => true);
              },
              child: Container(
                height: 55,
                width: 60,
                margin: EdgeInsets.only(right: 10),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.apartment_rounded,
                        size: 18,
                        color: Color(whiteCustom),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Rekanan',
                        style: TextStyle(
                          fontSize: 8,
                          color: Color(whiteCustom),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              customBorder: new CircleBorder(),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ProfileScreen()));
              // },
              onTap: () {
                showToast(
                  'Coming soon..',
                  context: context,
                  animation: StyledToastAnimation.fade,
                  reverseAnimation: StyledToastAnimation.fade,
                  position: StyledToastPosition.center,
                  duration: Duration(seconds: 2),
                );
              },
              child: Container(
                height: 55,
                width: 55,
                child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        size: 18,
                        color: Color(whiteCustom),
                      ),
                      Text(
                        'Paguyuban',
                        style: TextStyle(
                          fontSize: 7,
                          color: Color(whiteCustom),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: 45,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 33),
            Text(
              'ONLINE',
              style: TextStyle(
                  fontSize: 7.5,
                  fontWeight: FontWeight.bold,
                  color: Color(whiteCustom)),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBorderShape extends ShapeBorder {
  MyBorderShape();

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path();
  }

  final double holeSize = 65;

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    print(rect.height);
    return Path.combine(
      PathOperation.difference,
      Path()
        ..addRRect(
            RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 8)))
        ..close(),
      Path()
        ..addOval(Rect.fromCenter(
            center: rect.center.translate(0, -rect.height / 2.2),
            height: holeSize,
            width: holeSize))
        ..close(),
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
