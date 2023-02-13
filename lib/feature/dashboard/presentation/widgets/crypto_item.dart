import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:flutter/material.dart';

import '../../data/dto/crypto_response.dart';
import '../../domain/model/crypto.dart';

class CryptoItemCard extends StatelessWidget {
  final Crypto cryptoItem;
  const CryptoItemCard({Key? key, required this.cryptoItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                            child: Image.network(
                              cryptoItem.imagePath
                            )
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
                                'assets/images/curve.png',
                                height: 20,
                                width: 40,
                              ),
                            ),
                            Row(
                              children: [
                                cryptoItem.isRise == true
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
                                  cryptoItem.percentage,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: cryptoItem.isRise ==
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
                        cryptoItem.name,
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
                        cryptoItem.price,
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
    );
  }
}
