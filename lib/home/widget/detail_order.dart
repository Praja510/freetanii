import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/profil/profile_screen.dart';

import '../home_screen.dart';

class DetailOrder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<DetailOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        title: Text(
          'Rincian Pesanan',
          style: TextStyle(fontSize: 16),
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
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25),
                Container(
                  height: SizeConfig.screenHeight / 1.65,
                  width: SizeConfig.screenWidth / 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400, width: 0.9),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Order No : ',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            '#03112021',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Tanggal :',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            '16 Juli 2021',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 5.5),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: Colors.grey.shade400,
                          dashLength: 3,
                          dashGapLength: 1,
                          lineLength: SizeConfig.screenWidth / 1.55,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Toko Pemesanan :',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Warung Srikandi',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 5.5),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: Colors.grey.shade400,
                          dashLength: 3,
                          dashGapLength: 1,
                          lineLength: SizeConfig.screenWidth / 1.55,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 16),
                          Text(
                            'Alamat Toko :',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 6.4),
                        height: SizeConfig.screenHeight / 19,
                        width: SizeConfig.screenWidth / 1.5,
                        // decoration: BoxDecoration(color: Colors.grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Jl. Wijaya No.02 Kec. Mampang Prapatan Purwokerto',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.1),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 5.5),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: Colors.grey.shade400,
                          dashLength: 3,
                          dashGapLength: 1,
                          lineLength: SizeConfig.screenWidth / 1.55,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Pelanggan Pemesanan Barang :',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Siti Aisyah',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            '+6281234567899',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 5.5),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: Colors.grey.shade400,
                          dashLength: 3,
                          dashGapLength: 1,
                          lineLength: SizeConfig.screenWidth / 1.55,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Alamat Kirim : ',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 3.6),
                        height: SizeConfig.screenHeight / 14,
                        width: SizeConfig.screenWidth / 1.8,
                        // decoration: BoxDecoration(color: Colors.grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Jl. Brawijaya No.45 Gg. Mangga RT. 01/ RW.03, Kel. Arcawinangun Kec.Purwokerto Timur Banyumas',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.1),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: SizeConfig.screenWidth / 5.5),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          dashColor: Colors.grey.shade400,
                          dashLength: 3,
                          dashGapLength: 1,
                          lineLength: SizeConfig.screenWidth / 1.55,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Produk yang di pesan',
                            style: TextStyle(
                              color: Colors.teal[400],
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Mix Shower Gel - 100ml',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '  -  ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1 Pcs',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 7),
                          Text(
                            'Rp 45.000',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Lotion Muka Halus',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30),
                          Text(
                            '  -  ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1 Pcs',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 7),
                          Text(
                            'Rp 45.000',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      const Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Colors.black54,
                        indent: 15,
                        endIndent: 15,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 2.1),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                ':',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 13),
                          Text(
                            'Rp 60.000',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text(
                            'Jumlah Barang',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 3.1),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                ':',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 13),
                              Text(
                                '2 item',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
