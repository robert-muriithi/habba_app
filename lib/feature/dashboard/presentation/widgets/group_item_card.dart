
import 'package:flutter/material.dart';

import '../../domain/model/groups.dart';

class GroupItemCard extends StatelessWidget {
  final Groups cryptoItem;
  const GroupItemCard({Key? key, required this.cryptoItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
              Text(
              cryptoItem.name,
               style: const TextStyle(
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
             ),
              Text(
               '${cryptoItem.members} people',
               style: const TextStyle(
                 fontSize: 10,
               ),
             ),

          ],
        )
    );
  }
}