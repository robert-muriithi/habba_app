import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/crypto_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetCryptoRepositoryImpl implements CryptoRepository {
  @override
  Future<Either<String, List<Crypto>>> getCryptoData() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    try {
      final snapshot = await _firestore.collection('cryptos').get();
      final List<Crypto> cryptoList = [];
      for (var element in snapshot.docs) {
        cryptoList.add(Crypto(
            name: element['name'],
            imagePath: element['imagePath'],
            price: element['price'],
            curvePath: element['curvePath'],
            percentage: element['percentage'],
            isRise: element['isRise']));
      }
      return Right(cryptoList);
    } catch (e) {
      return Left(e.toString());
    }
  }

}