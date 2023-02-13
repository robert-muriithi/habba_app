import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecase/get_cryptos_use_case.dart';

part 'crypto_state_event.dart';
part 'crypto_state_state.dart';

class CryptoStateBloc extends Bloc<CryptoStateEvent, CryptoStateState> {
  final GetCryptosUseCase _getCryptosUseCase;
  CryptoStateBloc(this._getCryptosUseCase) : super(CryptoStateInitial()) {
    on<CryptoStateEvent>((event, emit) {
      if (event is CryptoStateEventLoad) {
        emit(CryptoStateLoading());
          _getCryptosUseCase();
      }
    });
  }
}
