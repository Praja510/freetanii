import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_custom.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/registration/login_screen.dart';
import 'package:freetanii/widget/clipper_custom.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationScreen> {
  String _name = "",
      _email = "",
      _nomorhp = "",
      _password = "",
      _repassword = "";

  bool _isObscurepass = true, _isObscurerepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(purpleCustomGradient1),
                Color(purpleCustomGradient2)
              ],
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(60.0),
                  height: SizeConfig.screenHeight / 5,
                  child: Image.asset(
                    logoFt,
                    scale: 2.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.screenHeight / 16),
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: ClipperRightCustom(),
                        child: Container(
                          height: SizeConfig.screenHeight,
                          width: SizeConfig.screenWidth,
                          color: Colors.teal[300],
                        ),
                      ),
                      ClipPath(
                        clipper: ClipperLeftCustom(),
                        child: Opacity(
                          opacity: 0.96,
                          child: Container(
                            height: SizeConfig.screenHeight / 0.95,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Color(greyCustomGradient3),
                                  Color(greyCustomGradient4)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(50),
                        margin: EdgeInsets.only(
                            top: SizeConfig.screenHeight * 0.27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              child: Text(
                                textRegistration,
                                style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Color(textRegisColor)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: TextField(
                                onChanged: (String value) {
                                  setState(() {
                                    this._name = value;
                                  });
                                },
                                style: TextStyle(
                                    color: Color(textRegisColor), fontSize: 18),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: textName,
                                  labelStyle: TextStyle(
                                      color: Color(pinkCustom), fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                onChanged: (String value) {
                                  setState(() {
                                    this._email = value;
                                  });
                                },
                                style: TextStyle(
                                    color: Color(textRegisColor), fontSize: 18),
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: textEmailRegis,
                                  labelStyle: TextStyle(
                                      color: Color(pinkCustom), fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                onChanged: (String value) {
                                  setState(() {
                                    this._nomorhp = value;
                                  });
                                },
                                style: TextStyle(
                                    color: Color(textRegisColor), fontSize: 18),
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: textNoHP,
                                  labelStyle: TextStyle(
                                      color: Color(pinkCustom), fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                onChanged: (String value) {
                                  setState(() {
                                    this._password = value;
                                  });
                                },
                                style: TextStyle(
                                    color: Color(textRegisColor), fontSize: 18),
                                maxLines: 1,
                                obscureText: _isObscurepass,
                                decoration: InputDecoration(
                                  labelText: textPassRegis,
                                  labelStyle: TextStyle(
                                      color: Color(pinkCustom), fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  suffixIcon: IconButton(
                                      color: _isObscurepass
                                          ? Color(pinkCustom)
                                          : Color(blackCustom),
                                      onPressed: () {
                                        setState(() {
                                          _isObscurepass = !_isObscurepass;
                                        });
                                      },
                                      icon: Icon(_isObscurepass
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                ),
                              ),
                            ),
                            Container(
                              child: TextField(
                                onChanged: (String value) {
                                  setState(() {
                                    this._repassword = value;
                                  });
                                },
                                style: TextStyle(
                                    color: Color(blackCustom), fontSize: 18),
                                maxLines: 1,
                                obscureText: _isObscurerepass,
                                decoration: InputDecoration(
                                  labelText: textRePassRegis,
                                  labelStyle: TextStyle(
                                      color: Color(pinkCustom), fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Color(pinkCustom)),
                                  ),
                                  suffixIcon: IconButton(
                                      color: _isObscurerepass
                                          ? Color(pinkCustom)
                                          : Color(blackCustom),
                                      onPressed: () {
                                        setState(() {
                                          _isObscurerepass = !_isObscurerepass;
                                        });
                                      },
                                      icon: Icon(_isObscurerepass
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              child: ElevatedButton(
                                onPressed: () {
                                  if (this._name.isNotEmpty &&
                                      this._email.isNotEmpty &&
                                      this._nomorhp.isNotEmpty &&
                                      this._password.isNotEmpty &&
                                      this._repassword.isNotEmpty) {
                                    if (this._repassword != this._password) {
                                      showToast(
                                        'Ulangi Password tidak sama dengan Password!',
                                        context: context,
                                        animation: StyledToastAnimation.scale,
                                        reverseAnimation:
                                        StyledToastAnimation.fade,
                                        position: StyledToastPosition.bottom,
                                        animDuration: Duration(seconds: 1),
                                        duration: Duration(seconds: 3),
                                        curve: Curves.elasticOut,
                                        reverseCurve: Curves.linear,
                                      );
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    }
                                  } else if (this._name.isEmpty) {
                                    showToast(
                                      'Nama tidak boleh kosong!',
                                      context: context,
                                      animation: StyledToastAnimation.scale,
                                      reverseAnimation:
                                      StyledToastAnimation.fade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  } else if (this._email.isEmpty) {
                                    showToast(
                                      'Email tidak boleh kosong!',
                                      context: context,
                                      animation: StyledToastAnimation.scale,
                                      reverseAnimation:
                                      StyledToastAnimation.fade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  } else if (this._nomorhp.isEmpty) {
                                    showToast(
                                      'Nomor HP tidak boleh kosong!',
                                      context: context,
                                      animation: StyledToastAnimation.scale,
                                      reverseAnimation:
                                      StyledToastAnimation.fade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  } else if (this._password.isEmpty) {
                                    showToast(
                                      'Password tidak boleh kosong!',
                                      context: context,
                                      animation: StyledToastAnimation.scale,
                                      reverseAnimation:
                                      StyledToastAnimation.fade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  } else if (this._repassword.isEmpty) {
                                    showToast(
                                      'Ulangi Password tidak boleh kosong!',
                                      context: context,
                                      animation: StyledToastAnimation.scale,
                                      reverseAnimation:
                                      StyledToastAnimation.fade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 3),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  }
                                },
                                child: Text(
                                  textBtnRegis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(pinkCustom),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: BorderSide(
                                            color: Color(textLoginColor),
                                            width: 1)),
                                    padding: EdgeInsets.all(16),
                                    elevation: 5),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      textHaveUser,
                                      style: TextStyle(
                                          color: Color(textRegisColor),
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                      child: Text(
                                        textLoginHere,
                                        style: TextStyle(
                                            color: Color(pinkCustom),
                                            fontSize: 16),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
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
      ),
    );
  }
}
