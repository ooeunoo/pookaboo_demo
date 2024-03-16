import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_text_input.dart';

class CommentForm extends StatefulWidget {
  const CommentForm({super.key});

  @override
  _CommentFormState createState() => _CommentFormState();
}

class _CommentFormState extends State<CommentForm> {
  @override
  Widget build(BuildContext context) {
    return const AppTextInput(
      key: Key('nickname'),
      hintText: '화장실을 사용하면서 좋았던 점 또는 아쉬웠던 점을 공유해주세요.',
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      minLine: 4,
      maxLine: 10,
      textAlign: TextAlign.start,
    );
  }
}
