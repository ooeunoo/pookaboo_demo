part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent extends Equatable {}

class ClickMenuEvent extends ProfileEvent {
  final MenuItem item;

  ClickMenuEvent({required this.item});

  @override
  List<Object?> get props => [];
}
