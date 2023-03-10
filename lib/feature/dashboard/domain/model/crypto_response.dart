import 'package:equatable/equatable.dart';

class Crypto extends Equatable {
  final String name;
  final String price;
  final String imagePath;
  final String percentage;
  final bool isRise;

  const Crypto({required this.name, required this.imagePath, required this.price, required this.percentage, required this.isRise});

  @override

  List<Object?> get props => [
        name,
        imagePath,
        price,
        percentage,
        isRise,
  ];

}