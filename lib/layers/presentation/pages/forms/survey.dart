import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/entities/form/confirm_step.dart';
import 'package:pookaboo/shared/entities/form/data_option.dart';
import 'package:pookaboo/shared/entities/form/data_step.dart';
import 'package:pookaboo/shared/entities/form/information_step.dart';
import 'package:pookaboo/shared/entities/form/map_step.dart';
import 'package:pookaboo/shared/entities/form/multi_data_step.dart';
import 'package:pookaboo/shared/entities/form/multi_select_step.dart';
import 'package:pookaboo/shared/entities/form/multi_time_data_step.dart';
import 'package:pookaboo/shared/entities/form/picutre_step.dart';
import 'package:pookaboo/shared/entities/form/select_option.dart';
import 'package:pookaboo/shared/entities/form/single_select_step.dart';
import 'package:pookaboo/shared/entities/form/step.dart';
import 'package:pookaboo/shared/constant/enum.dart';

List<Step> steps = [
  InformationStep(
      id: 'Intro',
      title: '새로운 화장실 등록해볼까요?',
      description: '먼저 화장실의 위치가 어디인지 알려주세요!'),
  ConfirmStep(
      id: 'confirm',
      title: '등록이 완료되었습니다!',
      description: '빠른 시일 내에 검토 후 등록 완료됩니다.',
      image: '')
  //////////////////
  // MapStep(id: 'coordinates', title: ''),
  // ////////////////////
  // DataStep(
  //     id: 'name',
  //     title: '화장실 이름을 알려주세요',
  //     description: "화장실 이름은 정하실 수 있어요. \n등록된 이름은 다른 사용자에게도 동일하게 표시돼요.",
  //     type: InputDataType.text),
  // ////////////////////
  // SingleSelectStep(
  //     id: 'type',
  //     title: '화장실이 어디에 있나요?',
  //     description: "화장실이 빌딩에서 운영되고 있나요? 카페에서 운영되고있나요?",
  //     options: [
  //       SelectOption(text: '빌딩', value: 0),
  //       SelectOption(text: '카페', value: 1),
  //     ]),
  // ////////////////////
  // SingleSelectStep(
  //     id: 'gender',
  //     title: '화장실은 남녀가 분리되어있나요?',
  //     description: "",
  //     options: [
  //       SelectOption(text: '공용', value: false),
  //       SelectOption(text: '남녀분리', value: true),
  //     ]),
  // ////////////////////
  // SingleSelectStep(
  //     id: 'password',
  //     title: '잠금이 걸려있나요?',
  //     description: "",
  //     options: [
  //       SelectOption(text: '잠김', value: false),
  //       SelectOption(text: '안잠김', value: true),
  //     ]),
  // ////////////////////
  // MultiSelectStep(
  //     id: 'convenience',
  //     title: '화장실에 있는 편의시설을 알려주세요!',
  //     description: "여러개 선택하셔도 되요!",
  //     options: [
  //       ...ConvenienceKey.values.map((value) {
  //         return SelectOption(
  //             text: '${value.emoji} ${value.name}', value: value.key);
  //       })
  //     ]),
  // //////////////////
  // MultiDataStep(
  //     id: 'equipment',
  //     title: '화장실에 있는 시설 갯수를 알려주세요!',
  //     description: "",
  //     type: InputDataType.numberInt,
  //     options: [
  //       ...EquipmentKey.values.expand((value) {
  //         List<DataOption> options = [];
  //         for (var (key, label) in value.keys) {
  //           options.add(DataOption(id: key, label: label));
  //         }
  //         return options;
  //       })
  //     ]),
  // ////////////////////
  // MultiTimeDataStep(
  //   id: 'time',
  //   title: '화장실의 운영시간을 알려주세요!',
  //   description: "",
  //   type: InputTimeDataType.time,
  //   dateFormat: "HH:mm",
  //   options: [
  //     ...WeekKey.values.map((value) {
  //       return DataOption(id: value.key, label: value.ko);
  //     })
  //   ],
  // ),
  // ////////////////////
  // PictureStep(id: 'images', title: '화장실 이미지를 올려주세요'),
  ////////////////////
  ////////////////////
  ////////////////////
];
