import 'package:flutter/material.dart';
import 'package:rush/utils/colors_const.dart';

class MyBrandsScreen extends StatefulWidget {
  const MyBrandsScreen({super.key});

  @override
  State<MyBrandsScreen> createState() => _MyBrandsScreenState();
}

class _MyBrandsScreenState extends State<MyBrandsScreen> {
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
          'My Brands',
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
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorsConst.cardColor,
                        ),
                    child: Image.asset(
                        'assets/images/amazon-logo-s3f.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
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
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                        'assets/images/amazon-logo-s3f.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
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
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                        'assets/images/amazon-logo-s3f.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
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
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: ColorsConst.cardColor,
                    ),
                    child: Image.asset(
                        'assets/images/amazon-logo-s3f.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Card(
                  shadowColor: ColorsConst.cardColor,
                  color: ColorsConst.cardColor,
                  surfaceTintColor: ColorsConst.cardColor,
                  elevation: 1,
                  child: Container(
                    height: 110,
                    width: 120,
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
