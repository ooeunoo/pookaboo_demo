import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

class PictureStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  PictureStep({
    required this.id,
    required this.title,
    this.description,
  });

  factory PictureStep.fromJson(Map<String, dynamic> json) => PictureStep(
        id: json["id"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
      };
}
