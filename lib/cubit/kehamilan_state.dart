import 'package:equatable/equatable.dart';

import '../Models/model_kehamilan.dart';

abstract class KehamilanState extends Equatable {
  @override
  List<Object> get props => [];
}

class KehamilanInitial extends KehamilanState {}

class BuntingLoaded extends KehamilanState {
  final List<Kelahiran>? bunting;

  BuntingLoaded({this.bunting});

  @override
  List<Object> get props => [bunting!];
}

class BuntingLoadingFailed extends KehamilanState {
  final String? message;

  BuntingLoadingFailed(this.message);

  @override
  List<Object> get props => [message!];
}
