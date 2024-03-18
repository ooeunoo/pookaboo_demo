import 'dart:convert';

import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

class MultiSelectStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  List<SelectOption> options;
  int? maxOptionsSelected;
  int? minOptionsSelected;

  MultiSelectStep({
    required this.id,
    required this.title,
    required this.options,
    this.description,
    this.maxOptionsSelected,
    this.minOptionsSelected,
  });

  factory MultiSelectStep.fromJson(Map<String, dynamic> json) =>
      MultiSelectStep(
        id: json["id"],
        title: json["title"],
        options: json["options"],
        description: json["description"],
        maxOptionsSelected: json["maxOptionsSelected"],
        minOptionsSelected: json["minOptionsSelected"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "options": options,
        "description": description,
        "maxOptionsSelected": maxOptionsSelected,
        "minOptionsSelected": minOptionsSelected,
      };
}
