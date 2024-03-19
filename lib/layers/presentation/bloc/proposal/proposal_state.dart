part of 'proposal_bloc.dart';

@immutable
abstract class ProposalState {}

/////////////////////////////////
/// Initial
////////////////////////////////
class InitialState extends ProposalState {}

/////////////////////////////////
/// Empty
////////////////////////////////
class EmptyState extends ProposalState {}

/////////////////////////////////
///
////////////////////////////////
class SuccessCreateToiletProposalState extends ProposalState {
  @override
  List<Object> get props => [];
}

/////////////////////////////////
/// Error
////////////////////////////////
class ErrorState extends ProposalState {
  final String message;

  ErrorState({
    required this.message,
  });
}
