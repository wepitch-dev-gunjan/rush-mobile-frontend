import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailPasswrod_Screen extends StatefulWidget
{
const EmailPasswrod_Screen({super.key});

@override
State<EmailPasswrod_Screen> createState() => _EmailPassword_ScreenState();
}

class _EmailPassword_ScreenState extends State<EmailPasswrod_Screen>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double mHeight = MediaQuery.sizeOf(context).height;
    double mWidth = MediaQuery.sizeOf(context).width;

    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return  Scaffold(
        backgroundColor: const Color(0xFFFFFAF4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xff000000))),

        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 20, 35, 5),
              child: Text(
                "Not set a password",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 5, 35, 5),
              child: Text(
                "In order to sign up",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 1, 1),
              child: Text(
                "Enter email id",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(25,1,0,0),
              child: SizedBox(
                width: mWidth * 0.85,
                height:mHeight * 0.08,
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration:  InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Color(0xFFBFBCBA)),
                    ),
                  ),

                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 1, 1),
              child: Text(
                "Enter password",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(25,1,0,0),
              child: SizedBox(
                width: mWidth * 0.85,
                height:mHeight * 0.08,
                child: TextFormField(
                  cursorColor: Colors.black,
                  obscureText: true,
                  decoration:  InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(color: Color(0xFFBFBCBA)),
                    ),
                  ),

                ),
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(1, mHeight * 0.30 ,0,0),
                  child: SizedBox(
                    width: mWidth * 0.80,
                    height:mHeight * 0.065,// <-- match_parent
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8),
                          backgroundColor: const Color(0xffFF7918)),
                      onPressed: () {  },
                      child: const Text('Continue',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            )








          ],


        )

    );





  }



}