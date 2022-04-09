import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_custom.dart';
import 'package:freetanii/configs/string_images.dart';

class CourierSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CourierState();
}

class _CourierState extends State<CourierSettings> {
  bool status = false, status2 = false;

  String? _nominal, _time, _time2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal[800],
        title: Text(kurirSettingScreen),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 225,
                decoration: BoxDecoration(
                  color: Colors.teal[800],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: Container(
                          height: 130,
                          width: 130,
                          margin: EdgeInsets.only(
                            right: 3,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 3),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(personImg),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight / 19.52),
                    Container(
                      height: SizeConfig.screenHeight / 14.21,
                      width: SizeConfig.screenWidth / 1.25,
                      decoration: BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: Container(
                                child: Icon(
                              Icons.account_balance_wallet_rounded,
                              size: 25,
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Container(
                                  child: Text(
                                    saldoDompetTxt,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
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
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: Container(
                              child: Icon(
                                Icons.verified_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Container(
                                  child: Text(
                                    totalPoinTxt,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Container(
                                  child: Text(
                                    totalPoinTxt2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 35),
                          Container(
                            child: Icon(
                              Icons.camera_alt_rounded,
                              size: 25,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: SizeConfig.screenHeight / 6.8,
                width: SizeConfig.screenWidth / 1.25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 12),
                          Row(
                            children: [
                              SizedBox(width: SizeConfig.screenWidth / 14),
                              Container(
                                child: Text(
                                  'Dzikri Razzan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.grey[720],
                                      letterSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              SizedBox(width: SizeConfig.screenWidth / 14),
                              Container(
                                child: Text(
                                  '11.22.33.44.55.66.0001',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: SizeConfig.screenWidth / 14),
                              Container(
                                child: Text(
                                  'dzikri@gmail.com',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              SizedBox(width: SizeConfig.screenWidth / 14),
                              Container(
                                child: Text(
                                  '0812-1234-5678',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.only(right: 150, top: 2),
                child: Text(
                  titleWidget,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[720],
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                // onTap: () => {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => PersonalInfo(),
                //       )),
                // },
                child: Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Icon(
                            Icons.wallet_travel_rounded,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 11),
                                  child: Text(
                                    ongkir,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2, right: 2),
                                  child: Text(
                                    ongkir2,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
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
              ),
              const Divider(
                height: 1,
                thickness: 0.5,
                indent: 60,
                endIndent: 60,
                color: Colors.black54,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                height: 50,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(left: 23, bottom: 10),
                        child: Icon(
                          Icons.volunteer_activism_rounded,
                          size: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, right: 7),
                                child: Text(
                                  pesanan,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 2),
                                child: Text(
                                  pesanan2,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 6),
                          FlutterSwitch(
                            width: 40.0,
                            height: 20.0,
                            valueFontSize: 30.0,
                            toggleSize: 18.0,
                            borderRadius: 20.0,
                            activeColor: Colors.lightBlue.shade400,
                            value: status,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              const Divider(
                height: 1,
                thickness: 0.5,
                indent: 60,
                endIndent: 60,
                color: Colors.black54,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                height: 63,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(left: 23, bottom: 20),
                        child: Icon(
                          Icons.wash_rounded,
                          size: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, right: 17),
                                child: Text(
                                  codPayment,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, right: 38),
                                child: Text(
                                  codPayment2,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: EdgeInsets.only(left: 3),
                                child: Text(
                                  codPayment3,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 12.6),
                          FlutterSwitch(
                            width: 40.0,
                            height: 20.0,
                            valueFontSize: 30.0,
                            toggleSize: 18.0,
                            borderRadius: 20.0,
                            activeColor: Colors.lightBlue.shade400,
                            value: status2,
                            onToggle: (val) {
                              setState(() {
                                status2 = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 38),
                height: 27,
                width: SizeConfig.screenWidth / 2.4,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.bottom,
                  maxLines: 1,
                  maxLength: 10,
                  onChanged: (value) {
                    setState(() {
                      _nominal = value;
                    });
                  },
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: '200.000',
                    fillColor: Color(whiteCustom),
                    filled: true,
                    hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              const Divider(
                height: 1,
                thickness: 0.5,
                indent: 60,
                endIndent: 60,
                color: Colors.black54,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                height: 50,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Icon(
                          Icons.timer,
                          size: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 11, right: 8),
                                child: Text(
                                  jamKerja,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 7),
                                child: Text(
                                  jamKerja2,
                                  style: TextStyle(
                                      color: Colors.grey[800],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
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
              Container(
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 3.9),
                    Text(
                      jamKerja3,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: SizeConfig.screenWidth / 6.7,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.bottom,
                        maxLines: 1,
                        maxLength: 5,
                        onChanged: (value) {
                          setState(() {
                            _time = value;
                          });
                        },
                        style: TextStyle(fontSize: 11),
                        decoration: InputDecoration(
                          counterText: "",
                          hintText: '06.00',
                          fillColor: Color(whiteCustom),
                          filled: true,
                          hintStyle:
                              TextStyle(fontSize: 10, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      jamKerja4,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: SizeConfig.screenWidth / 6.7,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlignVertical: TextAlignVertical.bottom,
                        maxLines: 1,
                        maxLength: 5,
                        onChanged: (value) {
                          setState(() {
                            _time2 = value;
                          });
                        },
                        style: TextStyle(fontSize: 11),
                        decoration: InputDecoration(
                          counterText: "",
                          hintText: '17.00',
                          fillColor: Color(whiteCustom),
                          filled: true,
                          hintStyle:
                              TextStyle(fontSize: 10, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              const Divider(
                height: 1,
                thickness: 0.5,
                indent: 60,
                endIndent: 60,
                color: Colors.black54,
              ),
              GestureDetector(
                // onTap: () => {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => PersonalInfo(),
                //       )),
                // },
                child: Container(
                  margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Icon(
                            Icons.doorbell,
                            size: 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 11,
                                      right: SizeConfig.screenWidth / 11.9),
                                  child: Text(
                                    notifikasi,
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 2, left: 9),
                                  child: Text(
                                    notifikasi2,
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
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
              ),
              SizedBox(height: SizeConfig.screenHeight / 20)
            ],
          ),
        ),
      ),
    );
  }
}
