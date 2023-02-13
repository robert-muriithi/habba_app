
import 'package:flutter/material.dart';

class CategoryItemCard extends StatefulWidget {
  final String category;
  const CategoryItemCard({Key? key, required  this.category}) : super(key: key);

  @override
  State<CategoryItemCard> createState() => _CategoryItemCardState();
}

class _CategoryItemCardState extends State<CategoryItemCard> {
  bool isSelected = true;
  int currentIndex = 0;
  Color unselectedColor = Colors.white;
  Color? currentIndexColor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          currentIndexColor = isSelected ? Colors.white : Colors.blue;
        });
      },
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                widget.category,
                style: const TextStyle(
                  fontSize: 13,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
