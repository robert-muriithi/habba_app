import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';

class CryptoResponse extends Crypto {

  const CryptoResponse({
    required String name,
    required String price,
    required String imagePath,
    required String percentage,
    required bool isRise,
  }) : super(
          name: name,
          price: price,
          imagePath: imagePath,
          percentage: percentage,
          isRise: isRise,
        );

  factory CryptoResponse.fromJson(Map<String, dynamic> json) {
    return CryptoResponse(
      name: json['name'],
      price: json['price'],
      imagePath: json['image'],
      percentage: json['percentage'],
      isRise: json['isRise'],
    );
  }
}
