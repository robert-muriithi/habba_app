import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back_ios, color: Colors.grey.withOpacity(0.5)),
          Image.asset(
            'assets/images/title-image.png',
            scale: 1.5,
            height: 70,
            width: 70,
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/profile-picture.png'),
          )
        ],
      ),
    );
  }
}
