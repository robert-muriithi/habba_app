import 'package:flutter/material.dart';

import '../../domain/model/crypto.dart';

class CryptoItemCard extends StatelessWidget {
  final CryptoItem cryptoItem;
  const CryptoItemCard({Key? key, required this.cryptoItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green
                ),
                child: Center(
                  child: Image.asset(''),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
