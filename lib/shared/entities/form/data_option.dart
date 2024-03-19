import 'dart:convert';

import 'package:pookaboo/shared/entities/form/data_step.dart';
import 'package:pookaboo/shared/entities/form/select_option.dart';
import 'package:pookaboo/shared/entities/form/step.dart';

class DataOption {
  String id;
  String label;

  DataOption({
    required this.id,
    required this.label,
  });

  factory DataOption.fromJson(Map<String, dynamic> json) => DataOption(
        id: json["id"],
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {"id": id, "label": label};
}
