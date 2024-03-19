import 'dart:convert';

import 'package:pookaboo/shared/entities/form/step.dart';

class InformationStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  InformationStep({
    required this.id,
    required this.title,
    this.description,
  });

  factory InformationStep.fromJson(Map<String, dynamic> json) =>
      InformationStep(
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
