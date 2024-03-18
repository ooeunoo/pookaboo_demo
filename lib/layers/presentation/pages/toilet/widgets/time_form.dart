import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';

class TimeForm extends StatefulWidget {
  final Toilet? toilet;

  const TimeForm({super.key, this.toilet});

  @override
  _TimeFormState createState() => _TimeFormState();
}

class _TimeFormState extends State<TimeForm> {
  CreateTimeParams timeForm = CreateTimeParams(
      mon: OperateTime(open: null, close: null),
      tue: OperateTime(open: null, close: null),
      wed: OperateTime(open: null, close: null),
      thu: OperateTime(open: null, close: null),
      fri: OperateTime(open: null, close: null),
      sat: OperateTime(open: null, close: null),
      sun: OperateTime(open: null, close: null));

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
