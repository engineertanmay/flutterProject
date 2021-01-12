import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterProject/pages/customer_login_ui.dart';
import 'package:flutterProject/pages/customer_signup.dart';
import 'package:flutterProject/pages/staf_login_ui.dart';
import 'package:flutterProject/pages/varify_mobile_ui.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:response/response.dart';
// import 'package:estore/extension/ext.dart';

class HomePage extends StatelessWidget {
    final respose = ResponseUI.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/icon2.png",
                  width:respose.setWidth(100),
                ),
              ),
              SizedBox(
                height: respose.setHeight(30),
              ),
              Text(
                "welcome_title".tr,
                style: TextStyle(
                  fontSize: respose.setFontSize(30.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: respose.setHeight(30),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20, right: 20),
                child: Text(
                  "welcome_message".tr,
                  style: TextStyle(
                    fontSize: respose.setFontSize(18.0),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: respose.setHeight(50),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(VerifyMobileUI());
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffFA8223),
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "welcome_verify_account".tr,
                    style: TextStyle(
                      color: Color(0xffFA8223),
                      fontWeight: FontWeight.bold,
                      fontSize: respose.setFontSize(18.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: respose.setHeight(18),
              ),
              Text(
                "Or",
                style: TextStyle(
                  fontSize: respose.setFontSize(20.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: respose.setHeight(20),
              ),
              MaterialButton(
                onPressed: () {
                  Get.to(CustomerSignupUI());
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffFA8223),
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "welcome_create_account".tr,
                    style: TextStyle(
                      color: Color(0xffFA8223),
                      fontWeight: FontWeight.bold,
                      fontSize: respose.setFontSize(18),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(CustomerLoginUI());
                          },
                          child: Container(
                            width: Get.width * 0.5,
                            color: Color(0xffFA8223),
                            height: respose.setHeight(80.0),,
                            alignment: Alignment.center,
                            child: Text(
                              "welcome_login_customer".tr,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: respose.setFontSize(18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(StafLoginUI());
                          },
                          child: Container(
                            width: Get.width * 0.5,
                            height:respose.setHeight(80.0),
                            color: Color(0xff04896B),
                            alignment: Alignment.center,
                            child: Text(
                              "welcome_login_staff".tr,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: respose.setFontSize(18.0),
                              ),
                            ),
                          ),
                        )
                      ],
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