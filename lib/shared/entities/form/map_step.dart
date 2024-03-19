import 'package:pookaboo/shared/entities/form/step.dart';

class MapStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  MapStep({
    required this.id,
    required this.title,
    this.description,
  });

  factory MapStep.fromJson(Map<String, dynamic> json) => MapStep(
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
