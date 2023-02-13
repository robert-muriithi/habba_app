import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/utils/constants.dart';
import '../../domain/usecase/get_cryptos_use_case.dart';

part 'crypto_state_event.dart';
part 'crypto_state_state.dart';

class CryptoStateBloc extends Bloc<CryptoStateEvent, CryptoStateState> {
  final GetCryptosUseCase _getCryptosUseCase;
  CryptoStateBloc(this._getCryptosUseCase) : super(CryptoStateInitial()) {
    on<CryptoStateEvent>(getCryptosEventObserver);
  }

  Future<void> getCryptosEventObserver(event, emit) async {
    if (event is CryptoStateEventLoad) {
      emit(CryptoStateLoading());
      final result = await _getCryptosUseCase();
      result.fold((l) => emit(CryptoStateError(message: l)),
              (r) => emit(CryptoStateLoaded(cryptoList: r)
      ));

    } else {
      emit(const CryptoStateError(message: Constants.UNEXPECTED_FAILURE_MESSAGE));
    }
  }

  String mapFailureToMessage(Failure failure){
    switch (failure.runtimeType) {
      case ServerFailure:
        return Constants.SERVER_FAILURE_MESSAGE;
      default:
        return Constants.UNEXPECTED_FAILURE_MESSAGE;
    }
  }


}
