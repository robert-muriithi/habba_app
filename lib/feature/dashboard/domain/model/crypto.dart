class CryptoItem {
  final String name;
  final String price;
  final String imagePath;
  final String curvePath;
  final String percentage;
  final bool isRise;



  CryptoItem({required this.name, required this.imagePath, required this.price, required this.curvePath, required this.percentage, required this.isRise});
}

var cryptoItemsDemo = [
  CryptoItem(
    name: "USD",
    imagePath: "assets/images/t.png",
    price: "148K",
    curvePath: "assets/images/curve.png",
    percentage: "10.5%",
    isRise: false,
  ),
  CryptoItem(
    name: "BUSD",
    imagePath: "assets/images/busd.png",
    price: "148K",
    curvePath: "assets/images/curve2.png",
    percentage: "8.5%",
    isRise: true,
  ),
  CryptoItem(
    name: "CAKE",
    imagePath: "assets/images/cake.png",
    price: "148K",
    curvePath: "assets/images/curve.png",
    percentage: "10.5%",
    isRise: false,
  ),
];