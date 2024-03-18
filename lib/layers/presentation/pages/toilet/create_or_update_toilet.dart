import 'package:flutter/material.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/layers/presentation/pages/toilet/widgets/basic_form.dart';
import 'package:pookaboo/layers/presentation/pages/toilet/widgets/convenience_form.dart';
import 'package:pookaboo/layers/presentation/pages/toilet/widgets/equipment_form.dart';
import 'package:pookaboo/layers/presentation/pages/toilet/widgets/time_form.dart';

enum CreateOrUpdateToiletStep { basic, equipment, convenience, time }

class CreateOrUpdateToilet extends StatefulWidget {
  final Toilet? toilet;

  const CreateOrUpdateToilet({super.key, this.toilet});

  @override
  _CreateOrUpdateToiletState createState() => _CreateOrUpdateToiletState();
}

class _CreateOrUpdateToiletState extends State<CreateOrUpdateToilet> {
  CreateOrUpdateToiletStep step = CreateOrUpdateToiletStep.basic;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.toilet != null) {}
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restroom Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (step == CreateOrUpdateToiletStep.basic) ...{
                  const BasicForm()
                },
                if (step == CreateOrUpdateToiletStep.equipment) ...{
                  const EquipmentForm()
                },
                if (step == CreateOrUpdateToiletStep.convenience) ...{
                  const ConvenienceForm()
                },
                if (step == CreateOrUpdateToiletStep.time) ...{
                  const TimeForm()
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
