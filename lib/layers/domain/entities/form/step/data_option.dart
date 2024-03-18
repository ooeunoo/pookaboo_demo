import 'dart:convert';

class DataOption {
  String text;
  dynamic value;
  String? description;

  DataOption({
    required this.text,
    required this.value,
    this.description,
  });

  factory DataOption.fromJson(Map<String, dynamic> json) => DataOption(
        text: json["text"],
        value: json["value"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "value": value,
        "description": description,
      };
}
