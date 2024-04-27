import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rush/utils/colors_const.dart';

class MyOffersScreen extends StatefulWidget {
  const MyOffersScreen({super.key});

  @override
  State<MyOffersScreen> createState() => _MyOffersScreenState();
}

class _MyOffersScreenState extends State<MyOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: ColorsConst.appColor,
        backgroundColor: ColorsConst.appColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorsConst.whiteColor,
          ),
        ),
        titleSpacing: -6,
        title: const Text(
          'Offers',
          style: TextStyle(color: ColorsConst.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xff204571)),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Popular',
                    ),
                    Text(
                      '_______',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorsConst.appColor),
                    )
                  ],
                ),
                Text('A-Z'),
                Text('Percent'),
                Text('Amount'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Card(
                      shadowColor: ColorsConst.cardColor,
                      color: ColorsConst.cardColor,
                      surfaceTintColor: ColorsConst.cardColor,
                      elevation: 1,
                      child: Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsConst.cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/amazon-logo-s3f.png',
                              height: 94,
                              width: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Expires in',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                    Text('02:14:27',style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Container(
                                  height: 28,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'GRAB DEAL',
                                        style: TextStyle(
                                            color: ColorsConst.whiteColor, fontSize: 12),
                                      )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                          '60% off',
                          style: TextStyle(
                              color: ColorsConst.whiteColor, fontSize: 12),
                        )),
                      ),
                    ),
                  ],
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                      'assets/images/Flipkart-Logo.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Card(
                      shadowColor: ColorsConst.cardColor,
                      color: ColorsConst.cardColor,
                      surfaceTintColor: ColorsConst.cardColor,
                      elevation: 1,
                      child: Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsConst.cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/amazon-logo-s3f.png',
                              height: 94,
                              width: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Expires in',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                    Text('02:14:27',style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Container(
                                  height: 28,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'GRAB DEAL',
                                        style: TextStyle(
                                            color: ColorsConst.whiteColor, fontSize: 12),
                                      )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                              '60% off',
                              style: TextStyle(
                                  color: ColorsConst.whiteColor, fontSize: 12),
                            )),
                      ),
                    ),
                  ],
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                      'assets/images/Flipkart-Logo.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Card(
                      shadowColor: ColorsConst.cardColor,
                      color: ColorsConst.cardColor,
                      surfaceTintColor: ColorsConst.cardColor,
                      elevation: 1,
                      child: Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsConst.cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/amazon-logo-s3f.png',
                              height: 94,
                              width: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Expires in',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                    Text('02:14:27',style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Container(
                                  height: 28,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'GRAB DEAL',
                                        style: TextStyle(
                                            color: ColorsConst.whiteColor, fontSize: 12),
                                      )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                              '60% off',
                              style: TextStyle(
                                  color: ColorsConst.whiteColor, fontSize: 12),
                            )),
                      ),
                    ),
                  ],
                ),                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                      'assets/images/Flipkart-Logo.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Card(
                      shadowColor: ColorsConst.cardColor,
                      color: ColorsConst.cardColor,
                      surfaceTintColor: ColorsConst.cardColor,
                      elevation: 1,
                      child: Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorsConst.cardColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/amazon-logo-s3f.png',
                              height: 94,
                              width: 120,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('Expires in',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                    Text('02:14:27',style: TextStyle(fontSize: 14,color: ColorsConst.redColor,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Container(
                                  height: 28,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                        'GRAB DEAL',
                                        style: TextStyle(
                                            color: ColorsConst.whiteColor, fontSize: 12),
                                      )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: ColorsConst.redColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                              '60% off',
                              style: TextStyle(
                                  color: ColorsConst.whiteColor, fontSize: 12),
                            )),
                      ),
                    ),
                  ],
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                      'assets/images/Flipkart-Logo.png',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
