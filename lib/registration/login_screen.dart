import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:freetanii/configs/colors_custom.dart';
import 'package:freetanii/configs/size_screen.dart';
import 'package:freetanii/configs/string_custom.dart';
import 'package:freetanii/configs/string_images.dart';
import 'package:freetanii/home/home_screen.dart';
import 'package:freetanii/registration/registration_screen.dart';
import 'package:freetanii/widget/clipper_custom.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username = "", _password = "";
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      //@arjunalst2020
      backgroundColor: Color(0xffeaeaea),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(55.0),
                height: SizeConfig.screenHeight / 5,
                child: Image.asset(
                  logoFreeTani,
                  height: SizeConfig.screenHeight,
                  // width: 200,
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
                        color: Color(greenCustom),
                      ),
                    ),
                    ClipPath(
                      clipper: ClipperLeftCustom(),
                      child: Opacity(
                        opacity: 0.97,
                        child: Container(
                          height: SizeConfig.screenHeight,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(purpleCustomGradient1),
                                Color(purpleCustomGradient2),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(50),
                      margin:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            child: Text(
                              loginTxt,
                              style: TextStyle(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  color: Color(textLoginColor)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: TextField(
                              onChanged: (String value) {
                                setState(() {
                                  this._username = value;
                                });
                              },
                              style: TextStyle(
                                color: Color(whiteCustom),
                                fontSize: 18,
                              ),
                              maxLines: 1,
                              decoration: InputDecoration(
                                labelText: emailTxt,
                                labelStyle: TextStyle(
                                  color: Color(pinkCustom),
                                  fontSize: 16,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(pinkCustom)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(pinkCustom),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: TextField(
                              onChanged: (String value) {
                                setState(() {
                                  this._password = value;
                                });
                              },
                              style: TextStyle(
                                color: Color(whiteCustom),
                                fontSize: 18,
                              ),
                              maxLines: 1,
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                labelText: passTxt,
                                labelStyle: TextStyle(
                                  color: Color(pinkCustom),
                                  fontSize: 16,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(pinkCustom)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(pinkCustom),
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  color: _isObscure
                                      ? Color(pinkCustom)
                                      : Color(whiteCustom),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                if (this._username.isNotEmpty &&
                                    this._password.isNotEmpty) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                } else if (this._username.isEmpty) {
                                  showToast(
                                    toastMsgTxt,
                                    context: context,
                                    animation: StyledToastAnimation.scale,
                                    reverseAnimation: StyledToastAnimation.fade,
                                    position: StyledToastPosition.bottom,
                                    animDuration: Duration(seconds: 1),
                                    duration: Duration(seconds: 3),
                                    curve: Curves.elasticOut,
                                    reverseCurve: Curves.linear,
                                  );
                                } else if (this._password.isEmpty) {
                                  showToast(
                                    toastMsgTxt2,
                                    context: context,
                                    animation: StyledToastAnimation.scale,
                                    reverseAnimation: StyledToastAnimation.fade,
                                    position: StyledToastPosition.bottom,
                                    animDuration: Duration(seconds: 1),
                                    duration: Duration(seconds: 3),
                                    curve: Curves.elasticOut,
                                    reverseCurve: Curves.linear,
                                  );
                                }
                              },
                              child: Text(
                                btnLoginTxt,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(15),
                                elevation: 5,
                                primary: Color(pinkCustom),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(
                                        color: Color(textLoginColor),
                                        width: 1)),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 3.0),
                            child: TextButton(
                              onPressed: () {
                                showToast(
                                  toastLupaPassTxt,
                                  context: context,
                                  animation: StyledToastAnimation.scale,
                                  reverseAnimation: StyledToastAnimation.fade,
                                  position: StyledToastPosition.bottom,
                                  animDuration: Duration(seconds: 1),
                                  duration: Duration(seconds: 3),
                                  curve: Curves.elasticOut,
                                  reverseCurve: Curves.linear,
                                );
                              },
                              child: Text(
                                lupaPassTxt,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(textLoginColor),
                                ),
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
      floatingActionButton: SizeConfig.showKeyboard
          ? Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      dontHaveUserTxt,
                      style:
                          TextStyle(color: Color(textLoginColor), fontSize: 16),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      child: Text(
                        registerTxt,
                        style:
                            TextStyle(fontSize: 16, color: Color(pinkCustom)),
                      ),
                    ),
                  )
                ],
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
