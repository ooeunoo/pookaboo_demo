import 'dart:convert';

import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

class MultiDataStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  List<SelectOption> options;

  MultiDataStep({
    required this.id,
    required this.title,
    required this.options,
    this.description,
  });

  factory MultiDataStep.fromJson(Map<String, dynamic> json) => MultiDataStep(
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
