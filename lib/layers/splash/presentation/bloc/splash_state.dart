part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  @override
  List<Object> get props => [];
}

class SplashInitialState extends SplashState {}

class SplashLoadedState extends SplashState {}
