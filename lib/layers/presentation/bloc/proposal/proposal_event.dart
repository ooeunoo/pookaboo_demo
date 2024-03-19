part of 'proposal_bloc.dart';

@immutable
abstract class ProposalEvent extends Equatable {}

/////////////////////////////////
/// Create Proposal Event
////////////////////////////////
class CreateToiletProposalEvent extends ProposalEvent {
  final CreateToiletParam params;

  @override
  CreateToiletProposalEvent({required this.params});

  @override
  List<Object> get props => [params];
}
