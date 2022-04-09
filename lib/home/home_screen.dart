import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_custom.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/activity/order_screen.dart';
import 'package:freetanii/profil/profile_screen.dart';
import 'package:freetanii/widget/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  bool _detailInfoMarketeer = false;
  bool _detailInfoMarketeer2 = false;
  bool _detailInfoMarketeer3 = false;
  bool _toastOrder = false;

  List<String> images = <String>[
    'assets/images/corousel/img_6.jpeg',
    'assets/images/corousel/img_7.jpeg',
    'assets/images/corousel/img_8.jpeg',
    'assets/images/corousel/img_9.jpeg'
  ];

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          'Hi, Dzikri',
          style: TextStyle(fontSize: 18),
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
            child: Container(
              margin: EdgeInsets.only(
                right: 15,
              ),
              child: Image.asset(homeMiniIcon),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _toastOrder = !_toastOrder;
                      });
                    },
                    child: CarouselSlider(
                      items: images.map((e) => Image.asset(e, fit: BoxFit.fill,)).toList(),
                      options: CarouselOptions(
                        // aspectRatio: 16 / 8,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 8),
                        autoPlayAnimationDuration: Duration(milliseconds: 900),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.only(top: SizeConfig.screenHeight / 2.1),
                      height: SizeConfig.screenHeight / 4.3,
                      width: SizeConfig.screenWidth / 1,
                      child: Image.asset(homeImage),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              child: Center(
                                child: Container(
                                  width: SizeConfig.screenWidth / 1.1,
                                  height: SizeConfig.screenHeight / 7.2,
                                  margin: EdgeInsets.only(
                                    top: _detailInfoMarketeer2
                                        ? SizeConfig.screenHeight * 0.29
                                        : SizeConfig.screenHeight * 0.24,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(whiteCustom),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(11)),
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
                                    children: [
                                      SizedBox(
                                          height:
                                              SizeConfig.screenHeight / 22.5),
                                      Center(
                                        child: Row(
                                          children: [
                                            SizedBox(width: 30),
                                            Container(
                                              child: Icon(
                                                Icons.upload_file_rounded,
                                                size: 26,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Container(
                                              child: Text(
                                                'Transfer',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 21),
                                            Container(
                                              child: Icon(
                                                Icons.list_alt_rounded,
                                                size: 26,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Container(
                                              child: Text(
                                                'Histori',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 18),
                                            Container(
                                              child: Icon(
                                                Icons.qr_code_2_rounded,
                                                size: 26,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 6),
                                            Container(
                                              child: Text(
                                                'Kode Bayar',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 9.5,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                width: SizeConfig.screenWidth /
                                                    13),
                                            Container(
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _detailInfoMarketeer2 =
                                                        !_detailInfoMarketeer2;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_up_rounded,
                                                  size: 35,
                                                  color: _detailInfoMarketeer2
                                                      ? Colors.black45
                                                      : Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // SizedBox(height: 5),
                                      Row(
                                        children: [
                                          SizedBox(width: 30),
                                          Container(
                                            child: Icon(
                                              Icons
                                                  .account_balance_wallet_rounded,
                                              size: 26,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Container(
                                            child: Text(
                                              'Isi Saldo',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 22),
                                          Container(
                                            child: Icon(
                                              Icons.credit_card_rounded,
                                              size: 26,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Container(
                                            child: Text(
                                              'Bayar',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 22),
                                          Container(
                                            child: Icon(
                                              Icons.sim_card_download_rounded,
                                              size: 26,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Container(
                                            child: Text(
                                              'Tarik Dana',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width:
                                                  SizeConfig.screenWidth / 13),
                                          Container(
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _detailInfoMarketeer2 =
                                                      !_detailInfoMarketeer2;
                                                });
                                              },
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 35,
                                                color: _detailInfoMarketeer2
                                                    ? Colors.transparent
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _detailInfoMarketeer,
                              child: Center(
                                child: Column(
                                  children: [
                                    Container(
                                      width: SizeConfig.screenWidth / 1.1,
                                      height: SizeConfig.screenHeight / 8.9,
                                      margin: EdgeInsets.only(
                                        top: SizeConfig.screenHeight * 0.27,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.teal[800],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(11)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x14000000),
                                            offset: Offset(
                                              0,
                                              2,
                                            ),
                                            blurRadius: 3,
                                            spreadRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height:
                                                      SizeConfig.screenHeight /
                                                          16,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left:
                                                        SizeConfig.screenWidth /
                                                            5.7,
                                                  ),
                                                  child: Text(
                                                    'Terima Pesanan',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color:
                                                          Color(greenCustom2),
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      SizeConfig.screenHeight /
                                                          250,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left:
                                                        SizeConfig.screenWidth /
                                                            16,
                                                  ),
                                                  child: Text(
                                                    '10',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.white,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height:
                                                      SizeConfig.screenHeight /
                                                          16,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: SizeConfig
                                                              .screenWidth /
                                                          5.2),
                                                  child: Text(
                                                    'Tolak Pesanan',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color:
                                                          Color(greenCustom2),
                                                      fontFamily: 'Roboto',
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      SizeConfig.screenHeight /
                                                          250,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left:
                                                        SizeConfig.screenWidth /
                                                            13,
                                                  ),
                                                  child: Text(
                                                    '2',
                                                    style: TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.white,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Container(
                                    width: SizeConfig.screenWidth / 1.1,
                                    height: SizeConfig.screenHeight / 8.5,
                                    margin: EdgeInsets.only(
                                      top: SizeConfig.screenHeight * 0.21,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.teal[800],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(11),
                                      ),
                                      // boxShadow: [
                                      //   _detailInfoMarketeer
                                      //       ? BoxShadow(
                                      //           color: Color(0x42000000),
                                      //           offset: Offset(
                                      //             0,
                                      //             0,
                                      //           ),
                                      //         )
                                      //       : BoxShadow(
                                      //           color: Color(0x42000000),
                                      //           offset: Offset(
                                      //             0,
                                      //             3,
                                      //           ),
                                      //           blurRadius: 6,
                                      //           spreadRadius: 2,
                                      //         ),
                                      // ],
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 35,
                                              bottom: SizeConfig.screenHeight *
                                                  0.06,
                                            ),
                                            child: Icon(
                                              Icons
                                                  .account_balance_wallet_rounded,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 14),
                                              Container(
                                                child: Text(
                                                  saldoDompetTxt,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 2),
                                              Container(
                                                child: Text(
                                                  saldoDompetTxt2,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 8,
                                                      fontFamily: 'Roboto'),
                                                ),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: Text(
                                                  pendapatan,
                                                  style: TextStyle(
                                                    color: Color(greenCustom2),
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 15, top: 2),
                                                child: Text(
                                                  saldoDompetTxt3,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 35,
                                              bottom: SizeConfig.screenHeight *
                                                  0.06,
                                            ),
                                            child: Icon(
                                              Icons.verified_rounded,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 14),
                                                child: Text(
                                                  totalPoinTxt,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 1, right: 12),
                                                child: Text(
                                                  totalPoinTxt2,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: 2, right: 11),
                                                child: Text(
                                                  pendapatanPoin,
                                                  style: TextStyle(
                                                    color: Color(greenCustom2),
                                                    fontSize: 8,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    right: 34, top: 2),
                                                child: Text(
                                                  poinMasuk,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: SizeConfig.screenWidth / 8,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 8, left: 13),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _detailInfoMarketeer =
                                                        !_detailInfoMarketeer;
                                                  });
                                                },
                                                child: Icon(
                                                  _detailInfoMarketeer
                                                      ? Icons
                                                          .keyboard_arrow_up_rounded
                                                      : Icons
                                                          .keyboard_arrow_down_rounded,
                                                  size: 35,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: FlutterSwitch(
                                                width: 45.0,
                                                height: 20.0,
                                                valueFontSize: 30.0,
                                                toggleSize: 18.0,
                                                borderRadius: 20.0,
                                                activeColor:
                                                    Color(greenCustom2),
                                                value: status,
                                                onToggle: (val) {
                                                  setState(() {
                                                    status = val;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Visibility(
                      visible: _toastOrder,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: SizeConfig.screenHeight / 2.45),
                        height: SizeConfig.screenHeight / 4.4,
                        width: SizeConfig.screenWidth / 1.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black38, width: 0.8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: SizeConfig.screenWidth,
                              height: SizeConfig.screenHeight / 18,
                              decoration: BoxDecoration(
                                color: Colors.teal[800],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Pesanan Masuk',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Anda memiliki pesanan baru',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              children: [
                                SizedBox(width: SizeConfig.screenWidth / 10.5),
                                GestureDetector(
                                  onTap: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OrderScreen(),
                                      ),
                                    ),
                                  },
                                  child: Container(
                                    height: SizeConfig.screenHeight / 21,
                                    width: SizeConfig.screenWidth / 4,
                                    decoration: BoxDecoration(
                                      color: Color(purpleCustomGradient2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Ok',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: SizeConfig.screenHeight / 21,
                                  width: SizeConfig.screenWidth / 5,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Lewati',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '( 2mnt )',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // add btn
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Transform.translate(
        offset: Offset(0, -17.5),
        child: FloatingActionButton(
          backgroundColor: _detailInfoMarketeer3 ? Colors.red : Colors.green,
          onPressed: () {
            setState(() {
              _detailInfoMarketeer3 = !_detailInfoMarketeer3;
            });
          },
          child: Icon(
            _detailInfoMarketeer3
                ? Icons.airplanemode_inactive_rounded
                : Icons.airplanemode_active_rounded,
            color: Color(whiteCustom),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationCustom(),
    );
  }
}
