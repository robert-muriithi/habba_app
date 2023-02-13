import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';

class CryptoResponse extends Crypto {

  const CryptoResponse({
    required String name,
    required String price,
    required String imagePath,
    required String curvePath,
    required String percentage,
    required bool isRise,
  }) : super(
          name: name,
          price: price,
          imagePath: imagePath,
          curvePath: curvePath,
          percentage: percentage,
          isRise: isRise,
        );

  factory CryptoResponse.fromJson(Map<String, dynamic> json) {
    return CryptoResponse(
      name: json['name'],
      price: json['price'],
      imagePath: json['imagePath'],
      curvePath: json['curvePath'],
      percentage: json['percentage'],
      isRise: json['isRise'],
    );
  }
}
