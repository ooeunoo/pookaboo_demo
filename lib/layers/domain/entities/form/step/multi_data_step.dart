import 'dart:convert';

import 'package:pookaboo/layers/domain/entities/form/step/data_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

class MultiDataStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;
  DataType type;
  String? dateFormat;

  List<DataOption> options;

  MultiDataStep({
    required this.id,
    required this.title,
    this.description,
    required this.options,
    required this.type,
    this.dateFormat,
  });

  factory MultiDataStep.fromJson(Map<String, dynamic> json) => MultiDataStep(
        id: json["id"],
        title: json["title"],
        options: json["options"],
        description: json["description"],
        type: json["type"],
        dateFormat: json["dateFormat"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "options": options,
        "description": description,
        "type": type,
        "dateFormat": dateFormat
      };
}
