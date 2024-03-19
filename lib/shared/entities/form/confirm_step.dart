import 'package:pookaboo/shared/entities/form/step.dart';

class ConfirmStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;
  String? image;

  ConfirmStep(
      {required this.id, required this.title, this.description, this.image});

  factory ConfirmStep.fromJson(Map<String, dynamic> json) => ConfirmStep(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        'image': image,
      };
}
