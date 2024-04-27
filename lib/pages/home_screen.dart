import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:rush/pages/my_brands_screen.dart';
import 'package:rush/pages/my_offers_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFAF4),
      drawer: Drawer(
        width: 240,
        backgroundColor: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 164,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff133964),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 28,
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg1dIOAjqRZTG33LCikcTs75d2G2OJH9vnTA&usqp=CAU',
                                  height: 48,
                                  width: 48,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    const Text(
                      'Name',
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ListTile(
                        leading: Image.asset('assets/images/Vector (5).png'),
                        title: const Text(
                          "Account Settings",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 12.0),
              //   child: Column(
              //     children: [
              //       ListTile(
              //         leading: Image.asset(
              //           'assets/page-1/images/help.jpg',
              //           height: 20,
              //           width: 20,
              //           fit: BoxFit.cover,
              //         ),
              //         title: Text(
              //           "About Us",
              //           style: SafeGoogleFont(
              //             "Inter",
              //             fontSize: 16,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         shape: Border(
              //             bottom: BorderSide(
              //           color: Colors.black.withOpacity(0.09),
              //         )),
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOffersScreen()));
                      },
                      leading: Image.asset('assets/images/Vector (3).png'),
                      title: const Text(
                        "My offers",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyBrandsScreen()));
                      },
                      leading: const Icon(
                        Icons.table_bar,
                        size: 18,
                      ),
                      title: const Text(
                        "My brands",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: GestureDetector(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/Question.jpg',
                      height: 16,
                      width: 16,
                    ),
                    title: const Text(
                      'Get Help',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: GestureDetector(
                  child: const ListTile(
                    leading: Icon(
                      Icons.phone_in_talk_outlined,
                      size: 20,
                    ),
                    title: Text(
                      'Call us',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: GestureDetector(
                  child: ListTile(
                    leading: Image.asset('assets/images/Vector (5) (1).png'),
                    title: const Text(
                      'Rate us',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: GestureDetector(
                  child: ListTile(
                    leading: Image.asset('assets/images/Vector (4).png'),
                    title: const Text(
                      'Logout',
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xff133964),
        title: const Text(
          'RUSH',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30, top: 18, bottom: 18),
          child: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset(
              'assets/images/group-59.png',
              color: const Color(0xffffffff),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Container(
                // autogroups3swDQd (AXy84jvvc4rqKvoPDJs3sw)
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      labelStyle:
                          TextStyle(color: Colors.black45, fontSize: 15.0),
                      labelText: "Search for brands, deals or products",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.1810,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Align(
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 200,
                    maxWidth: 390,
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  width: 390,
                  height: 120,
                  child: ImageSlideshow(
                    autoPlayInterval: 6000,
                    isLoop: true,
                    indicatorColor: Colors.orange,
                    indicatorBackgroundColor: Colors.white,
                    children: dummyImagesSlider
                        .map((e) => Container(
                              width: 390,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4)),
                                image: DecorationImage(image: NetworkImage(e)),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'TOP CATEGORIES',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.catching_pokemon_rounded),
                              Text('FASHION'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mobile_screen_share_rounded),
                              Text('MOBILE'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.food_bank_outlined),
                              Text('BANKING'),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black26)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.catching_pokemon_rounded),
                              Text('FASHION'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'EXTRA CASHBACK OFFERS FOR YOU',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      Text(
                        'VIEW ALL >',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: Image.asset(
                              'assets/images/amazon-logo-s3f.png',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: Image.asset(
                            'assets/images/Flipkart-Logo.png',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: Image.asset(
                            'assets/images/Myntra-Logo.png',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffFFFFFF),
                              border: Border.all(color: Colors.black12)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.catching_pokemon_rounded),
                              Text('FASHION'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Center(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYWBosV-oa0cn0Qi6Nm-1FGiliyo3V1eFFng&usqp=CAU'))),
                        const SizedBox(
                          width: 10,
                        ),
                        Center(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYWBosV-oa0cn0Qi6Nm-1FGiliyo3V1eFFng&usqp=CAU'))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> dummyImagesSlider = [
  "https://res.cloudinary.com/drqangxt5/image/upload/v1707392532/vwoxcoxnthnqzf6gr6dk.png",
  "https://res.cloudinary.com/drqangxt5/image/upload/v1707395734/hg6qrgwoxunplx8nulyo.png",
  "https://res.cloudinary.com/drqangxt5/image/upload/v1707470820/hw3dtgyzidkdxmfn9okf.png",
  "https://res.cloudinary.com/drqangxt5/image/upload/v1707388826/ivt6y17a9pknj5fvdp8t.png",
];
