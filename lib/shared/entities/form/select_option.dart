import 'dart:convert';

class SelectOption {
  String text;
  dynamic value;
  String? description;

  SelectOption({
    required this.text,
    required this.value,
    this.description,
  });

  factory SelectOption.fromJson(Map<String, dynamic> json) => SelectOption(
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
