import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pookaboo/layers/auth/data/models/app_user.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  factory Review({
    required AppUser user,
    required Toilet toilet,
    required double cleanliness,
    required double safety,
    required double management,
    required double convenience,
    required String comment,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
