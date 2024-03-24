import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/announcement/announcement.dart';
import 'package:pookaboo/layers/domain/repositories/announcement/announcement_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class GetAnnouncementsUseCase extends UseCase<List<Announcement>, Null> {
  final AnnouncementRepository _repo;

  GetAnnouncementsUseCase(this._repo);

  @override
  Future<Either<Failure, List<Announcement>>> call(params) {
    return _repo.getAnnouncementsImpl();
  }
}
