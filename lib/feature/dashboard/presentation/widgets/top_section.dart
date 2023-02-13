import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {

  const TopSection({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          /*image: DecorationImage(
              image: null

          )*/
        ),

      )
    );
  }
}
