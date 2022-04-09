import 'package:flutter/material.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/home/widget/detail_order.dart';
import 'package:freetanii/profil/profile_screen.dart';
import 'package:freetanii/widget/bottom_nav_order_screen.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        title: Text(
          'Pesanan',
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
          child: Column(
            children: <Widget>[
              Container(
                height: SizeConfig.screenWidth / 6.5,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Icon(
                        Icons.add_business_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Warung Pemesanan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(width: SizeConfig.screenWidth / 8),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailOrder(),
                            ),
                          ),
                        },
                        child: Container(
                          height: 30,
                          width: SizeConfig.screenWidth / 3,
                          decoration: BoxDecoration(
                            color: Colors.teal[400],
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                          child: Center(
                            child: Text(
                              'Order No : #03112021',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 5.7,
                margin: EdgeInsets.only(right: 22, left: 22),
                decoration: BoxDecoration(
                  color: Color(whiteCustom),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      height: SizeConfig.screenHeight / 7,
                      width: SizeConfig.screenWidth / 3.5,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.apartment_rounded,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: SizeConfig.screenHeight / 7,
                      width: SizeConfig.screenWidth / 2.9,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Text(
                              'Warung Srikandi',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 27),
                            child: Text(
                              'Kel. Arcawinangun',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(width: 3),
                                Expanded(
                                  child: Text(
                                    'Warung kelontong, Sembako, Bumbu, Alat dapur, dll',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey[300],
                                  size: 18,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey[300],
                                  size: 18,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 15),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Colors.red.shade300,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          height: 25,
                          width: SizeConfig.screenWidth / 5.5,
                          margin: EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: Colors.teal[400],
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Center(
                            child: Text(
                              'Kunjungi',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: SizeConfig.screenWidth / 14,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Info Pelanggan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: SizeConfig.screenHeight / 14,
                margin: EdgeInsets.only(right: 22, left: 22),
                decoration: BoxDecoration(
                  color: Color(whiteCustom),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black38, width: 0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 20),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 12),
                        Container(
                          margin: EdgeInsets.only(
                              right: SizeConfig.screenWidth / 11),
                          child: Text(
                            'Siti Aisyah',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '+628123456789101',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: SizeConfig.screenWidth / 2.15),
                    Icon(
                      Icons.call,
                      size: 25,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: SizeConfig.screenWidth / 14,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Icon(
                        Icons.location_history,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Alamat Kirim',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: SizeConfig.screenHeight / 6.5,
                margin: EdgeInsets.only(right: 22, left: 22),
                decoration: BoxDecoration(
                  color: Color(whiteCustom),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black38, width: 0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: SizeConfig.screenHeight / 11.5,
                          width: SizeConfig.screenWidth / 2.12,
                          child: Row(
                            children: [
                              SizedBox(width: 15),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Jl. Brawijaya No.45 Gg. Mangga RT. 01 RW.03, Kel. Arcawinangun Kec. Purwokerto Timur, Banyumas',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black87,
                                      wordSpacing: 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: SizeConfig.screenWidth / 3.6),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Icon(
                            Icons.location_on_rounded,
                            size: 40,
                            color: Colors.red.shade300,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.black54,
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin:
                          EdgeInsets.only(right: SizeConfig.screenWidth / 1.45),
                      child: Text(
                        'Catatan :',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Container(
                          child: Text(
                            'Rumah warna hijau, Pagar besi hitam',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: SizeConfig.screenWidth / 14,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Produk Yang di Pesan',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: SizeConfig.screenHeight / 4,
                margin: EdgeInsets.only(right: 22, left: 22),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black38, width: 0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: SizeConfig.screenHeight / 12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            height: SizeConfig.screenHeight / 16,
                            width: SizeConfig.screenWidth / 8,
                            decoration: BoxDecoration(color: Colors.blueGrey),
                            child: Center(
                              child: Text(
                                'Img',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                child: Text(
                                  'Mix Shower Gel - 100ml',
                                  style: TextStyle(fontSize: 12.5),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                margin: EdgeInsets.only(
                                    right: SizeConfig.screenWidth / 5.5),
                                child: Text(
                                  'Rp 45.000',
                                  style: TextStyle(
                                    fontSize: 12.5,
                                    color: Colors.teal[400],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 4.5),
                          Center(
                            child: Text(
                              '1/pcs',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.3,
                      color: Colors.black54,
                    ),
                    Container(
                      height: SizeConfig.screenHeight / 12,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Container(
                            height: SizeConfig.screenHeight / 16,
                            width: SizeConfig.screenWidth / 8,
                            decoration: BoxDecoration(color: Colors.blueGrey),
                            child: Center(
                              child: Text(
                                'Img',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                child: Text(
                                  'Lotion muka halus',
                                  style: TextStyle(fontSize: 12.5),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                margin: EdgeInsets.only(
                                    right: SizeConfig.screenWidth / 8.9),
                                child: Text(
                                  'Rp 15.000',
                                  style: TextStyle(
                                    fontSize: 12.5,
                                    color: Colors.teal[400],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: SizeConfig.screenWidth / 3.4),
                          Center(
                            child: Text(
                              '1/pcs',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 0.3,
                      color: Colors.black54,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Column(
                          children: [
                            SizedBox(height: 15),
                            Container(
                              child: Text(
                                'Jumlah Barang   : 2 item',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text(
                                'Sub Total              : 2 item',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: SizeConfig.screenWidth / 3.8),
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailOrder(),
                              ),
                            ),
                          },
                          child: Container(
                            height: 25,
                            width: SizeConfig.screenWidth / 5.5,
                            margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                                color: Colors.teal[400],
                                borderRadius: BorderRadius.circular(14)),
                            child: Center(
                              child: Text(
                                'Detail',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: SizeConfig.screenWidth / 14,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 25),
                      Icon(
                        Icons.credit_card_rounded,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Cara Pembayaran',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                height: SizeConfig.screenHeight / 17,
                margin: EdgeInsets.only(right: 22, left: 22),
                decoration: BoxDecoration(
                  color: Color(whiteCustom),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black38, width: 0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(
                        0,
                        3,
                      ),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 35),
                    Text(
                      'TUNAI :',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationOS(),
    );
  }
}
