import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';

class EquipmentForm extends StatefulWidget {
  final Toilet? toilet;

  const EquipmentForm({super.key, this.toilet});

  @override
  _EquipmentFormState createState() => _EquipmentFormState();
}

class _EquipmentFormState extends State<EquipmentForm> {
  CreateEquipmentParams equipmentForm = CreateEquipmentParams(
      child_seat: [0, 0, 0],
      urinal: [0, 0, 0],
      child_urinal: [0, 0, 0],
      disable_urinal: [0, 0, 0],
      seat: [0, 0, 0],
      disable_seat: [0, 0, 0],
      washbasin: [0, 0, 0]);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
