import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.7)
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.wallet, color: Colors.deepOrange,),
          Icon(Icons.insert_chart_outlined, color: Colors.deepOrange,),
          Icon(Icons.notification_important, color: Colors.deepOrange,),
          Icon(Icons.settings, color: Colors.deepOrange,)
        ],
      ),
    );
  }
}
