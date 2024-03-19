import 'dart:io';

import 'package:flutter/material.dart' hide Step;
import 'package:image_picker/image_picker.dart';
import 'package:pookaboo/shared/entities/form/picutre_step.dart';
import 'package:pookaboo/shared/entities/form/step_result.dart';
import 'package:pookaboo/shared/widgets/form/material/form_container.dart';
import 'package:pookaboo/shared/widgets/form/material/form_button.dart';
import 'package:pookaboo/shared/widgets/form/material/form_header.dart';
import 'package:pookaboo/shared/constant/assets.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';

class AppPictureForm extends StatefulWidget {
  final PictureStep step;
  final void Function(StepResult? result) onNextPress;
  final void Function() onBackPress;

  const AppPictureForm({
    super.key,
    required this.step,
    required this.onNextPress,
    required this.onBackPress,
  });

  @override
  State<AppPictureForm> createState() => _PictureFormState();
}

class _PictureFormState extends State<AppPictureForm> {
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();

  PictureStep get step => widget.step;

  @override
  Widget build(BuildContext context) {
    return FormContainer(
      step: widget.step,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          FormHeader(title: widget.step.title),
          if (widget.step.description?.isNotEmpty == true)
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: Text(widget.step.description!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                ),
              ],
            ),
          const AppSpacerV(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AppButton(
                  title: '사진첩',
                  color: Palette.skyblue01,
                  titleColor: Palette.white,
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                ),
              ),
              const AppSpacerH(),
              Expanded(
                  child: AppButton(
                      title: '카메라',
                      color: Palette.skyblue01,
                      titleColor: Palette.white,
                      onPressed: () {
                        getImage(ImageSource.camera);
                      }))
            ],
          ),
          /////////////////////////////////////////////////////////////////////////////////
          ////// Image Swipe
          const Spacer(),
          /////////////////////////////////////////////////////////////////////////////////
          Container(
            height: Dimens.bigImageW,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _images.isEmpty ? 1 : _images.length,
              itemBuilder: (context, index) {
                return _images.isEmpty
                    ? SizedBox(
                        width: context.widthInPercent(100),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimens.space12),
                          child: Image.asset(
                            Assets.noImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Stack(
                        children: [
                          Container(
                            width: Dimens.bigImageW,
                            margin: const EdgeInsets.only(right: 10.0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(Dimens.space12),
                              child: Image.file(
                                File(_images[index].path),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: Dimens.space8,
                            right: Dimens.space20,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _images.removeAt(index);
                                });
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
              },
            ),
          ),
          const Spacer(),
          FormButton(
            onNextPress: widget.onNextPress,
            result: StepResult(stepId: step.id, value: _images),
          ),
        ],
      ),
    );
  }

  Future getImage(ImageSource imageSource) async {
    List<XFile> files = [];

    if (imageSource == ImageSource.gallery) {
      files = await _picker.pickMultiImage();
    } else {
      XFile? picturedImage = await _picker.pickImage(source: imageSource);
      if (picturedImage != null) {
        files.add(picturedImage);
      }
    }

    setState(() {
      _images.addAll(files.map((XFile file) => XFile(file.path)));
    });

    log.d(_images.map((image) {
      log.d(image.path);
    }));
  }
}
