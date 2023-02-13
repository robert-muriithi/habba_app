import 'package:equatable/equatable.dart';

class Groups extends Equatable {
  final String name;
  final String members;

  const Groups({required this.name, required this.members,});

  @override

  List<Object?> get props => [
    name,
    members
  ];

}