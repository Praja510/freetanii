import 'package:flutter/material.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';

import '../profile_screen.dart';

class PersonalInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        title: Text(
          'Info Pribadi',
          style: TextStyle(fontSize: 17),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight / 25),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 11.5),
                            child: Text(
                              'Nama Lengkap',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              'Yudistira Nugroho',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 8.5),
                            child: Text(
                              'Nomor NIK/KTP',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              '33022212345670001',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 40),
                            child: Text(
                              'Tanggal Lahir',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              '07/08/1980',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              'Jenis Kelamin',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: Text(
                              'Laki-Laki',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 8.7),
                            child: Text(
                              'Nomor Hp',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              '0812-1234-5678',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 4.5),
                            child: Text(
                              'E-Mail',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              'yudistira@gmail.com',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 18,
                margin: EdgeInsets.only(right: 20, left: 20),
                // decoration: BoxDecoration(color: Colors.grey),
                child: Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth / 11),
                    Container(
                      width: SizeConfig.screenWidth / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.screenWidth / 19),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.black87,
                                  letterSpacing: 0.1),
                            ),
                          ),
                          // SizedBox(height: 5),
                          Container(
                            child: Text(
                              '**********',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 5.5),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.lightBlue,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight / 3.5),
              Container(
                height: SizeConfig.screenHeight / 16,
                margin: EdgeInsets.only(
                  right: SizeConfig.screenWidth / 6.5,
                  left: SizeConfig.screenWidth / 6.5,
                ),
                decoration: BoxDecoration(
                  color: Colors.teal[400],
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Simpan',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
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
