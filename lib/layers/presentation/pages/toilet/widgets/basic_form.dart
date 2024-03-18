import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';

class BasicForm extends StatefulWidget {
  final Toilet? toilet;

  const BasicForm({super.key, this.toilet});

  @override
  State<BasicForm> createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  CreateToiletParam toiletForm = CreateToiletParam(
      name: '',
      type: 0,
      gender: false,
      password: false,
      password_tip: '',
      address: '',
      road_address: '',
      location_tip: '',
      city: '');

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
