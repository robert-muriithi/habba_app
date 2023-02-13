part of 'crypto_state_bloc.dart';

abstract class CryptoStateEvent extends Equatable {
  const CryptoStateEvent();
}

class CryptoStateEventLoad extends CryptoStateEvent {
  @override
  List<Object> get props => [];
}

