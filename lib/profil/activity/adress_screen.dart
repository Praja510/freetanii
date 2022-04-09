import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/profil/profile_screen.dart';

class AddressScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddressState();
}

class _AddressState extends State<AddressScreen> {
  String? _detail;

  bool _saveButton = false;
  String? valueChoose;
  List listProvinsi = ['Lampung', 'DKI Jakarta'];

  String? valueChoose2;
  List listKabupaten = ['Bandar Lampung', 'Jakarta Timur'];

  String? valueChoose3;
  List listKecamatan = ['Kemiling', 'Cipayung'];

  String? valueChoose4;
  List listKelurahan = ['Beringin Raya', 'Bambu Apus'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 10,
        backgroundColor: Colors.teal[800],
        title: Text(
          'Alamat',
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
        child: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.screenHeight / 4.5,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    offset: Offset(
                      0,
                      2,
                    ),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: SizeConfig.screenWidth / 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          'Alamat Anda',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: SizeConfig.screenHeight / 9,
                        width: SizeConfig.screenWidth / 2.2,
                        // color: Colors.grey,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Perumahan Berkoh Indah Jl. Brawijaya No. 45 Gg. Mangga Rt.03 Rw.05 Kel. Arcawinangun, Kec. Purwokerto Timur, Kab. Banyumas Jawa Tengah - 53114',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth / 9),
                  //@arjunalst2020
                  // ChangeButton(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _saveButton = !_saveButton;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: SizeConfig.screenHeight / 8),
                      height: SizeConfig.screenHeight / 17,
                      width: SizeConfig.screenWidth / 3,
                      decoration: _saveButton
                          ? BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))
                          : BoxDecoration(
                          color: Colors.teal[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                      child: Center(
                        child: Text(
                          _saveButton ? 'Simpan' : 'Ubah',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Visibility(
                visible: _saveButton,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Provinsi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: SizeConfig.screenHeight / 17,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              value: valueChoose,
                              iconSize: 25,
                              underline: SizedBox(),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              onChanged: (newValue) {
                                setState(() {
                                  valueChoose = newValue.toString();
                                });
                              },
                              items: listProvinsi.map((valueItem) {
                                return DropdownMenuItem(
                                    value: valueItem, child: Text(valueItem));
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Kabupaten/Kota',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: SizeConfig.screenHeight / 17,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              value: valueChoose2,
                              iconSize: 25,
                              underline: SizedBox(),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              onChanged: (newValue2) {
                                setState(() {
                                  valueChoose2 = newValue2.toString();
                                });
                              },
                              items: listKabupaten.map((valueItem) {
                                return DropdownMenuItem(
                                    value: valueItem, child: Text(valueItem));
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Kecamatan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: SizeConfig.screenHeight / 17,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              value: valueChoose3,
                              iconSize: 25,
                              underline: SizedBox(),
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              onChanged: (newValue3) {
                                setState(() {
                                  valueChoose3 = newValue3.toString();
                                });
                              },
                              items: listKecamatan.map((valueItem) {
                                return DropdownMenuItem(
                                    value: valueItem, child: Text(valueItem));
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Kelurahan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Container(
                            height: SizeConfig.screenHeight / 17,
                            padding: EdgeInsets.only(right: 10, left: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              dropdownColor: Colors.white,
                              value: valueChoose4,
                              iconSize: 25,
                              underline: SizedBox(),
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                              onChanged: (newValue4) {
                                setState(() {
                                  valueChoose4 = newValue4.toString();
                                });
                              },
                              items: listKelurahan.map((valueItem) {
                                return DropdownMenuItem(
                                    value: valueItem, child: Text(valueItem));
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Jalan/Gang/Nama Gedung/Nama Perumahan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Container(
                          height: SizeConfig.screenHeight / 17,
                          width: SizeConfig.screenWidth / 1.12,
                          child: TextField(
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                            onChanged: (value) {
                              setState(() {
                                _detail = value;
                              });
                            },
                            decoration: InputDecoration(
                              counterText: "",
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Unit/Blok/RT/RW',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Container(
                          height: SizeConfig.screenHeight / 17,
                          width: SizeConfig.screenWidth / 1.12,
                          child: TextField(
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                            onChanged: (value) {
                              setState(() {
                                _detail = value;
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.only(left: 23),
                        child: Text(
                          'Kode Pos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Container(
                          height: SizeConfig.screenHeight / 17,
                          width: SizeConfig.screenWidth / 1.12,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            maxLength: 8,
                            style: TextStyle(fontSize: 12),
                            onChanged: (value) {
                              setState(() {
                                _detail = value;
                              });
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              counterText: "",
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: SizeConfig.screenWidth / 1.12,
                          height: SizeConfig.screenHeight / 10,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border:
                                Border.all(color: Colors.black38, width: 0.6),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: SizeConfig.screenHeight,
                                width: SizeConfig.screenWidth / 5,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                ),
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              SizedBox(width: SizeConfig.screenWidth / 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    'Tandai Lokasi Peta',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: 11,
                                    ),
                                  ),
                                  Container(
                                    height: SizeConfig.screenHeight / 17,
                                    width: SizeConfig.screenWidth / 1.9,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Jl. Brawijaya No,45 Gg. Mangga Kel. Arcawinangun, Kec. Purwokerto Timur, Banyumas',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.grey.shade800,
                                            ),
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
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: SizeConfig.screenHeight / 20,
                        width: SizeConfig.screenWidth / 1.6,
                        margin: EdgeInsets.only(
                            left: SizeConfig.screenWidth / 3.25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Pastikan lokasi yang Anda tandai di peta sesuai dengan alamat yang Anda isi di atas',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
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
}
