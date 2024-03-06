import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';

class AppChip extends StatefulWidget {
  final String text;
  final Widget icon;
  final bool isSelected;
  final Function(bool isSelected)? onChanged;

  const AppChip({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
    this.onChanged,
  });

  @override
  _AppChipState createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent, // 배경색 투명 설정
      padding: EdgeInsets.zero, // 기존 패딩 제거
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(
          width: 1, // 테두리 두께
          color: _isSelected
              ? const Color(0xFF5A606C)
              : const Color(0xFFDDE0E5), // 선택 여부에 따른 테두리 색상 변경
        ),
      ),
      // onPressed: () {
      //   if (widget.onChanged != null) {
      //     widget.onChanged!(!_isSelected);
      //   }
      //   setState(() {
      //     _isSelected = !_isSelected;
      //   });
      // },
      label: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.space8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.icon,
            const SizedBox(width: 4), // avatar와 label 사이의 간격 조절
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}
