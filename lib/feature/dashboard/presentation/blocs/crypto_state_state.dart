part of 'crypto_state_bloc.dart';

abstract class CryptoStateState extends Equatable {
  const CryptoStateState();
}

class CryptoStateInitial extends CryptoStateState {
  @override
  List<Object> get props => [];
}

class CryptoStateLoading extends CryptoStateState {
  @override
  List<Object> get props => [];
}

class GroupsStateLoading extends CryptoStateState {
  @override
  List<Object> get props => [];
}

class GroupsStateLoaded extends CryptoStateState {
  final groupsList;

  const GroupsStateLoaded({required this.groupsList});

  @override
  List<Object> get props => [groupsList];
}

class GroupsStateError extends CryptoStateState {
  final String message;

  const GroupsStateError({required this.message});

  @override
  List<Object> get props => [message];
}

class CryptoStateLoaded extends CryptoStateState {
  final  cryptoList;

  const CryptoStateLoaded({required this.cryptoList});

  @override
  List<Object> get props => [cryptoList];
}

class CryptoStateError extends CryptoStateState {
  final String message;

  const CryptoStateError({required this.message});

  @override
  List<Object> get props => [message];
}
