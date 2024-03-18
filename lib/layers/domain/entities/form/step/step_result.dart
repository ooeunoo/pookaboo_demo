class StepResult {
  String stepId;
  dynamic value;

  StepResult({
    required this.stepId,
    required this.value,
  });

  factory StepResult.fromJson(Map<String, dynamic> json) => StepResult(
        stepId: json["stepId"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "stepId": stepId,
        "value": value,
      };
}
