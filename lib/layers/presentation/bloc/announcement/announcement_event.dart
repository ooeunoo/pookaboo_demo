part of 'announcement_bloc.dart';

@immutable
abstract class AnnouncementEvent extends Equatable {}

/////////////////////////////////
/// Visitation Event
////////////////////////////////

/////////////////////////////////
/// Get Visitations By User Id
////////////////////////////////
class GetAnnouncementsEvent extends AnnouncementEvent {
  @override
  List<Object?> get props => [];
}
