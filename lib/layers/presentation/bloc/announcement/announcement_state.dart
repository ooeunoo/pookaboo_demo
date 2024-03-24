part of 'announcement_bloc.dart';

@immutable
abstract class AnnouncementState {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends AnnouncementState {}

/////////////////////////////////
/// Empty
////////////////////////////////
class EmptyState extends AnnouncementState {}

/////////////////////////////////
/// Searching Visitation
////////////////////////////////
class SearchingAnnouncementState extends AnnouncementState {}

/////////////////////////////////
/// Loaded Toilet Visitation By User Id
////////////////////////////////
class LoadedAnnouncementsState extends AnnouncementState {
  final List<Announcement> announcements;

  @override
  LoadedAnnouncementsState({
    required this.announcements,
  });
}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends AnnouncementState {
  final String message;

  ErrorState({
    required this.message,
  });
}
