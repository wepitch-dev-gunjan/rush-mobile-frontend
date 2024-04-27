import 'package:flutter/material.dart';
import 'package:rush/homepagecontainer.dart';
import 'package:rush/pages/home_screen.dart';
import 'package:rush/pages/loginsignup_screen.dart';
import 'otp_screen.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const LoginSignupScreen() ));
    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.sizeOf(context).height;
    var mWidth = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      body:Container(
       width: mWidth,
       height: mHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
      )

    );

  }

}
