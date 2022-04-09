import 'package:flutter/material.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_custom.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/profil/activity/account_bank_screen.dart';
import 'package:freetanii/profil/activity/adress_screen.dart';
import 'package:freetanii/profil/activity/notification_screen.dart';
import 'package:freetanii/profil/activity/personal_info.dart';
import 'package:freetanii/profil/activity/security_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.teal[800],
        // backgroundColor: Theme.of(context).primaryColor,
        title: Text(profilScreen),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 225,
                  decoration: BoxDecoration(
                    color: Colors.teal[800],
                ),
                  child: Column(
                    children: <Widget>[
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
                        color: Colors.teal[400],
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
                ),
                Container(
                  margin: EdgeInsets.only(right: 150, top: 2),
                  child: Text(
                    'Pengaturan Akun',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade900,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PersonalInfo(),
                        )),
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 23),
                      Container(
                        child: Container(
                          child: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage(fingerPrintImg),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Text(
                                'Info Pribadi',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2, left: 13),
                              child: Text(
                                'Atur profil jati diri Anda',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 119),
                          child: Image(
                            height: 13,
                            width: 13,
                            image: AssetImage(forwardBtnImg),
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
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddressScreen(),
                        )),
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage(adressImg),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 57),
                              child: Text(
                                'Alamat',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 13),
                                child: Text(
                                  'Daftar alamat lokasi Anda',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 105),
                          child: Image(
                            height: 12,
                            width: 12,
                            image: AssetImage(forwardBtnImg),
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
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountBank(),
                      ),
                    ),
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage(creditCardsImg),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 15),
                              child: Text(
                                'Rekening Bank',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 13),
                                child: Text(
                                  'Daftar rekening bank Anda',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 103),
                          child: Image(
                            height: 12,
                            width: 12,
                            image: AssetImage(forwardBtnImg),
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
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecurityScreen(),
                        )),
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage(securityImg),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 23),
                              child: Text(
                                'Keamanan',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 13),
                                child: Text(
                                  'Pengaturan kata sandi',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                          child: Image(
                            height: 12,
                            width: 12,
                            image: AssetImage(forwardBtnImg),
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
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ),
                    ),
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: EdgeInsets.only(left: 23),
                          child: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage(ringBellImg),
                          ),
                        ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, right: 29),
                                child: Text(
                                  'Notifikasi',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 2, left: 13),
                                child: Text(
                                  'Atur pesan & notifikasi',
                                style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                          child: Image(
                            height: 12,
                            width: 12,
                            image: AssetImage(forwardBtnImg),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
