import 'package:get_it/get_it.dart';

import 'feature/dashboard/data/repository/get_cryptos_repository_impl.dart';
import 'feature/dashboard/domain/repository/crypto_repository.dart';
import 'feature/dashboard/domain/usecase/get_cryptos_use_case.dart';
import 'feature/dashboard/presentation/blocs/crypto_state_bloc.dart';

//Service Locator
final sl = GetIt.instance;

Future<void> init () async {
  initFeatures();
}

void initFeatures() {
  //Bloc
  sl.registerFactory(() => CryptoStateBloc(sl()));

  //Use case
  sl.registerLazySingleton(() => GetCryptosUseCase(sl()));

  //Repository
  sl.registerLazySingleton<CryptoRepository>(() =>
      GetCryptoRepositoryImpl()
  );


}

/*
void initCore() {
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

Future<void> initExternal() async{
  //Dio
  sl.registerLazySingleton(() => Dio());

  //Network info
  sl.registerLazySingleton(() => InternetConnectionChecker());

  //Database
  final database = await $FloorBeersDatabase
      .databaseBuilder('app_database.db')
      .build();

  sl.registerFactory(() => database);
}*/
