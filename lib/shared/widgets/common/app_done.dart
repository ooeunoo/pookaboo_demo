import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDone extends StatelessWidget {
  const AppDone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: CupertinoButton(
              padding:
                  const EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0),
              child: const Text("Done"),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
              }),
        ),
      ),
    );
  }
}
