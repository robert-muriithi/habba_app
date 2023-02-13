import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/groups.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/crypto_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class GetCryptoRepositoryImpl implements CryptoRepository {
  final log = Logger();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<Either<String, List<Crypto>>> getCryptoData() async {

    try {
      final snapshot = await _firestore.collection('cryptos').get();
      final List<Crypto> cryptoList = [];
      for (var element in snapshot.docs) {
        cryptoList.add(Crypto(
            name: element['name'],
            imagePath: element['image'],
            price: element['price'],
            percentage: element['percentage'],
            isRise: element['isRise']));
      }
      return Right(cryptoList);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Groups>>> getGroups() async {
    try {
      final snapshot = await _firestore.collection('groups').get();
      final List<Groups> groupList = [];
      for (var element in snapshot.docs) {
        groupList.add(
            Groups(
            name: element['name'],
            members: element['size'],
        )
        );
      }
      return Right(groupList);
    } catch (e) {
      log.e(e.toString());
      return Left(e.toString());
    }
  }

}