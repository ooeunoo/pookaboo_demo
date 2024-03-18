import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';

class ConvenienceForm extends StatefulWidget {
  final Toilet? toilet;

  const ConvenienceForm({super.key, this.toilet});

  @override
  _ConvenienceFormState createState() => _ConvenienceFormState();
}

class _ConvenienceFormState extends State<ConvenienceForm> {
  CreateConvenienceParams convenienceForm = CreateConvenienceParams(
    bell: false,
    paper: false,
    towel: false,
    soap: false,
    powder_room: false,
    hand_dry: false,
    vending: false,
    diaper: false,
  );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
