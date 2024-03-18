import 'dart:convert';

import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

class SingleSelectStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  List<SelectOption> options;

  SingleSelectStep({
    required this.id,
    required this.title,
    required this.options,
    this.description,
  });

  factory SingleSelectStep.fromJson(Map<String, dynamic> json) =>
      SingleSelectStep(
        id: json["id"],
        title: json["title"],
        options: json["options"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "options": options,
        "description": description,
      };
}
