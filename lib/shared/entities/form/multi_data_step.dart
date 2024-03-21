import 'package:pookaboo/shared/entities/form/data_option.dart';
import 'package:pookaboo/shared/entities/form/step.dart';
import 'package:pookaboo/shared/constant/enum.dart';

class EquipmentDataStep implements Step {
  @override
  String id;
  @override
  String title;
  @override
  String? description;
  InputDataType type;
  bool? isGenderSeperate;

  List<DataOption> options;

  EquipmentDataStep(
      {required this.id,
      required this.title,
      this.description,
      required this.options,
      required this.type,
      this.isGenderSeperate});

  factory EquipmentDataStep.fromJson(Map<String, dynamic> json) =>
      EquipmentDataStep(
          id: json["id"],
          title: json["title"],
          options: json["options"],
          description: json["description"],
          type: json["type"],
          isGenderSeperate: json['isGenderSeperate']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "options": options,
        "description": description,
        "type": type,
        'isGenderSeperate': isGenderSeperate
      };
}
