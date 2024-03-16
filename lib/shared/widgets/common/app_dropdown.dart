import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class AppDropDown<T> extends StatefulWidget {
  const AppDropDown({
    super.key,
    required this.value,
    required this.items,
    this.hint,
    required this.onChanged,
    this.hintIsVisible = true,
    this.prefixIcon,
    this.focusNode,
  });
  final T value;
  final List<DropdownMenuItem<T>> items;
  final bool hintIsVisible;
  final String? hint;
  final ValueChanged<T?>? onChanged;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  @override
  _AppDropDownState<T> createState() => _AppDropDownState();
}

class _AppDropDownState<T> extends State<AppDropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimens.space8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.hintIsVisible) ...{
            Text(
              widget.hint ?? "",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).hintColor),
            ),
            AppSpacerV(value: Dimens.space6),
          },
          ButtonTheme(
            key: widget.key,
            alignedDropdown: true,
            padding: EdgeInsets.zero,
            child: DropdownButtonFormField<T>(
              isExpanded: true,
              focusNode: widget.focusNode,
              dropdownColor:
                  Theme.of(context).extension<PookabooColors>()!.card,
              icon: const Icon(Icons.arrow_drop_down),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                isDense: true,
                isCollapsed: true,
                filled: true,
                fillColor: Theme.of(context).extension<PookabooColors>()!.card,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: Dimens.space12),
                  child: widget.prefixIcon,
                ),
                prefixIconConstraints: BoxConstraints(
                  minHeight: Dimens.space24,
                  maxHeight: Dimens.space24,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: Dimens.space12),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  borderSide: const BorderSide(color: Palette.coolGrey09),
                  // borderSide: BorderSide(
                  //   color: Theme.of(context).extension<PookabooColors>()!.card!,
                  // ),
                ),
                border: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
                disabledBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  borderSide: BorderSide(color: Theme.of(context).cardColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  // borderSide: BorderSide(
                  //   color: Theme.of(context).extension<PookabooColors>()!.red!,
                  // ),
                ),
                errorBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  // borderSide: BorderSide(
                  //   color: Theme.of(context).extension<PookabooColors>()!.red!,
                  // ),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(Dimens.space12),
                  // borderSide: BorderSide(
                  //   color: Theme.of(context).extension<PookabooColors>()!.pink!,
                  // ),
                ),
              ),
              value: widget.value,
              items: widget.items,
              onChanged: widget.onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
