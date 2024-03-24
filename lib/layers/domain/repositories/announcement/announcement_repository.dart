import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/announcement/announcement.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class AnnouncementRepository {
  Future<Either<Failure, List<Announcement>>> getAnnouncementsImpl();
}
