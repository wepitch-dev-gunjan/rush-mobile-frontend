import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:rush/homepagecontainer.dart';
import 'package:rush/pages/email_password.dart';
import 'package:rush/pages/email_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double mHeight = MediaQuery.sizeOf(context).height;
    double mWidth = MediaQuery.sizeOf(context).width;

    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFAF4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xff000000))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 1, 5),
            child: Text(
              "Enter 6 digit\ncode we have\nsent you ",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                child: Text(
                  "Code sent to 98******54",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Text(
                  "Edit number",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff534ff8),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Pinput(
              length: 6,
              showCursor: true,
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(35, 40, 0, 0),
                child: Text(
                  "Haven't received the OTP ?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 40, 0, 0),
                child: Text(
                  "Resend it in 25 sec",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1, mHeight * 0.30, 0, 0),
                child: SizedBox(
                  width: mWidth * 0.80,
                  height: mHeight * 0.065, // <-- match_parent
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(8),
                        backgroundColor: const Color(0xffFF7918)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EmailPasswrod_Screen()));
                    },
                    child: const Text('Continue',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
