import 'package:flutter/material.dart';

import '../../domain/model/crypto.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/crypto_item.dart';
import '../widgets/top_app_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isSelected = true;
  List cryptos = [];
  int currentIndex = 0;
  Color unselectedColor = Colors.white;
  Color? currentIndexColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: const TopAppBar()),
      bottomNavigationBar: const BottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Row(
                children: const [
                  Text(
                    'Popular tables',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              /*color: Colors.grey.withOpacity(0.3)*/
                            ),
                            child: Stack(children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/group-photo.png'),
                                backgroundColor: Colors.white,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/vector.png'),
                                    ),
                                  )),
                            ]),
                          ),
                          const Text(
                            '#Deffi',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '1000 peope',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              /*color: Colors.grey.withOpacity(0.3)*/
                            ),
                            child: Stack(children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile-picture.png'),
                                backgroundColor: Colors.white,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/vector.png'),
                                    ),
                                  )),
                            ]),
                          ),
                          const Text(
                            '#NFT',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '802 people',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              /*color: Colors.grey.withOpacity(0.3)*/
                            ),
                            child: Stack(children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile-picture.png'),
                                backgroundColor: Colors.white,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/vector.png'),
                                    ),
                                  )),
                            ]),
                          ),
                          const Text(
                            '#Side Chama',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '802 people',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              /*color: Colors.grey.withOpacity(0.3)*/
                            ),
                            child: Stack(children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/profile-picture.png'),
                                backgroundColor: Colors.white,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/vector.png'),
                                    ),
                                  )),
                            ]),
                          ),
                          const Text(
                            '#BTF',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '802 people',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              /*color: Colors.grey.withOpacity(0.3)*/
                            ),
                            child: Stack(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/group-photo.png'),
                                  backgroundColor: Colors.white,
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                            'assets/images/vector.png'),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const Text(
                            '#Deffi',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            '802 people',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Stack(children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/group-photo.png'),
                            backgroundColor: Colors.white,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child:
                                      Image.asset('assets/images/vector.png'),
                                ),
                              ))
                        ]),
                      ),
                    ],
                  )),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                        currentIndex = 0;
                        currentIndexColor = Colors.grey.withOpacity(0.5);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelected
                              ? Colors.grey.withOpacity(0.5)
                              : Colors.white),
                      child:  Center(
                        child: Image.asset(
                          'assets/images/todays.png',

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                        currentIndex = 1;
                        currentIndexColor = Colors.grey.withOpacity(0.5);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/eye.png',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('My round table'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'Crypto',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var item in cryptoItemsDemo)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Image.asset(
                                                      item.imagePath
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding:
                                                    const EdgeInsets.all(5),
                                                    child: Image.asset(
                                                      item.curvePath,
                                                      height: 20,
                                                      width: 40,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      item.isRise == true
                                                          ? const Icon(
                                                        Icons
                                                            .arrow_upward,
                                                        color: Colors
                                                            .greenAccent,
                                                      )
                                                          : const Icon(
                                                        Icons
                                                            .arrow_downward,
                                                        color: Colors
                                                            .redAccent,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        item.percentage,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: item.isRise ==
                                                                true
                                                                ? Colors
                                                                .greenAccent
                                                                : Colors.redAccent),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              item.name,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8.0, right: 8.0,
                                              top: 3,
                                            ),
                                            child: Text(
                                              item.price,
                                              style: const TextStyle(
                                                fontSize: 12,

                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'Stocks',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var item in cryptoItemsDemo)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.3),
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Image.asset(
                                                      item.imagePath
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding:
                                                    const EdgeInsets.all(5),
                                                    child: Image.asset(
                                                      item.curvePath,
                                                      height: 20,
                                                      width: 40,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      item.isRise == true
                                                          ? const Icon(
                                                        Icons
                                                            .arrow_upward,
                                                        color: Colors
                                                            .greenAccent,
                                                      )
                                                          : const Icon(
                                                        Icons
                                                            .arrow_downward,
                                                        color: Colors
                                                            .redAccent,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        item.percentage,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: item.isRise ==
                                                                true
                                                                ? Colors
                                                                .greenAccent
                                                                : Colors.redAccent),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              item.name,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8.0,
                                              top: 5,
                                            ),
                                            child: Text(
                                              item.price,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
