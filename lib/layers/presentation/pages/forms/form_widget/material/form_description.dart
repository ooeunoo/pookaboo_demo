import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

class FormDescription extends StatelessWidget {
  final String description;

  const FormDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: Dimens.space12,
            ),
            child: Text(description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge),
          ),
        ),
      ],
    );
  }
}
