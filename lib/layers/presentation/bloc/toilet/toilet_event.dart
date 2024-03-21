part of 'toilet_bloc.dart';

@immutable
abstract class ToiletEvent extends Equatable {}

/////////////////////////////////
/// Upload Toilet Images
////////////////////////////////
class UploadToiletImagesEvent extends ToiletEvent {
  final UploadToiletImagesParams params;

  @override
  UploadToiletImagesEvent({required this.params});

  @override
  List<Object> get props => [params];
}

/////////////////////////////////
/// Get Toilet Images
////////////////////////////////
class GetToiletImagesEvent extends ToiletEvent {
  final int toiletId;

  @override
  GetToiletImagesEvent({required this.toiletId});

  @override
  List<Object> get props => [toiletId];
}

/////////////////////////////////
/// Create Proposal Event
////////////////////////////////
class CreateToiletProposalEvent extends ToiletEvent {
  final CreateToiletParam params;

  @override
  CreateToiletProposalEvent({required this.params});

  @override
  List<Object> get props => [params];
}
