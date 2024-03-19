part of 'proposal_bloc.dart';

@immutable
abstract class ProposalEvent extends Equatable {}

/////////////////////////////////
/// Create Proposal Event
////////////////////////////////
class CreateToiletProposalEvent extends ProposalEvent {
  final CreateToiletParam params;
  final List<File> images;

  @override
  CreateToiletProposalEvent({required this.params, required this.images});

  @override
  List<Object> get props => [params, images];
}
