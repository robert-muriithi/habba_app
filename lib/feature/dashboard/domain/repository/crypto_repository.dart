import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:dartz/dartz.dart';


abstract class CryptoRepository {
  Future<Either<String, List<Crypto>>> getCryptoData();
}