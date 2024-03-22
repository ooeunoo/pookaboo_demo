import 'dart:convert';

import 'package:pookaboo/shared/entities/form/data_step.dart';
import 'package:pookaboo/shared/entities/form/select_option.dart';
import 'package:pookaboo/shared/entities/form/step.dart';

class SingleSelectStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;

  List<SelectOption> options;

  SelectOption? expandCondition;
  DataStep? expand;

  SingleSelectStep({
    required this.id,
    required this.title,
    required this.options,
    this.description,
    this.expandCondition,
    this.expand,
  });

  factory SingleSelectStep.fromJson(Map<String, dynamic> json) =>
      SingleSelectStep(
        id: json["id"],
        title: json["title"],
        options: json["options"],
        description: json["description"],
        expandCondition: json['expandCondition'],
        expand: json["expand"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "options": options,
        "description": description,
        "expandCondition": expandCondition,
        "expand": expand,
      };
}
