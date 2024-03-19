import 'package:pookaboo/layers/domain/entities/form/step/step.dart';
import 'package:pookaboo/shared/constant/enum.dart';

class DataStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;
  InputDataType type;
  String? dateFormat;

  DataStep({
    required this.id,
    required this.title,
    this.description,
    required this.type,
    this.dateFormat,
  });

  factory DataStep.fromJson(Map<String, dynamic> json) => DataStep(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      type: json['type'],
      dateFormat: json['dateFormat']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "type": type,
        "dateFormat": dateFormat
      };
}
