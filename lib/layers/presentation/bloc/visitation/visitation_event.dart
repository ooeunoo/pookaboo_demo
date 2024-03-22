part of 'visitation_bloc.dart';

@immutable
abstract class VisitationEvent extends Equatable {}

/////////////////////////////////
/// Visitation Event
////////////////////////////////
class CreateToiletVisitationEvent extends VisitationEvent {
  final String user_id;
  final int toilet_id;

  CreateToiletVisitationEvent({required this.user_id, required this.toilet_id});

  @override
  List<Object?> get props => [user_id, toilet_id];
}

/////////////////////////////////
/// Get Visitations By User Id
////////////////////////////////
class GetToiletVisitationsByUserIdEvent extends VisitationEvent {
  final String user_id;

  GetToiletVisitationsByUserIdEvent({required this.user_id});

  @override
  List<Object?> get props => [user_id];
}

/////////////////////////////////
/// Open ToiletReviewForm Event
////////////////////////////////
class OpenToiletReviewFormEvent extends VisitationEvent {
  OpenToiletReviewFormEvent();

  @override
  List<Object?> get props => [];
}
