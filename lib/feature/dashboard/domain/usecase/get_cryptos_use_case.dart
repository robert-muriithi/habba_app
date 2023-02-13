
import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:dartz/dartz.dart';
import '../repository/crypto_repository.dart';

class GetCryptosUseCase {
  final CryptoRepository _cryptoRepository;

  GetCryptosUseCase(this._cryptoRepository);

  Future<Either<String, List<Crypto>>> call() async {
    final cryptos =  await  _cryptoRepository.getCryptoData();
    return cryptos;
  }
}