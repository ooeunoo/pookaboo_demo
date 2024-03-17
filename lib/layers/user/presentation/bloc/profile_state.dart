part of 'profile_bloc.dart';

@immutable
abstract class ProfileState extends Equatable {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends ProfileState {
  @override
  List<Object> get props => [];
}
