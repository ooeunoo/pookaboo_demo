import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/form/step/data_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/information_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/map_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/multi_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/select_option.dart';
import 'package:pookaboo/layers/domain/entities/form/step/single_select_step.dart';
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';
import 'package:pookaboo/shared/constant/enum.dart';

List<Step> steps = [
  InformationStep(id: 'Intro', title: '화장실 추가하기', description: '화장실을 추가해주세요'),
  ////////////////////
  MapStep(id: 'coordinates', title: '화장실 위치가 어디인가요?'),
  ////////////////////
  DataStep(
      id: 'name',
      title: '화장실 이름을 알려주세요',
      description: "화장실 이름은 정하실 수 있어요. \n등록된 이름은 다른 사용자에게도 동일하게 표시돼요.",
      type: DataType.text),
  ////////////////////
  SingleSelectStep(
      id: 'type',
      title: '화장실이 어디에 있나요?',
      description: "화장실이 빌딩 내 관리라면 빌딩, 카페 내에서 운영 중이라면 카페",
      options: [
        SelectOption(text: '빌딩', value: 0),
        SelectOption(text: '카페', value: 1),
      ]),
  ////////////////////
  SingleSelectStep(
      id: 'gender',
      title: '화장실은 남녀가 분리되어있나요?',
      description: "",
      options: [
        SelectOption(text: '공용', value: false),
        SelectOption(text: '남녀분리', value: true),
      ]),
  ////////////////////
  SingleSelectStep(
      id: 'password',
      title: '잠금이 걸려있나요?',
      description: "",
      options: [
        SelectOption(text: '잠김', value: false),
        SelectOption(text: '안잠김', value: true),
      ]),
  ////////////////////
  MultiSelectStep(
      id: 'convenience',
      title: '화장실에 있는 편의시설을 알려주세요!',
      description: "여러개 선택하셔도 되요!",
      options: [
        ...ConvenienceKey.values.map((value) {
          return SelectOption(
              text: '${value.name} ${value.emoji}', value: value.key);
        })
      ]),
  ////////////////////
  MultiSelectStep(
      id: 'convenience',
      title: '화장실에 있는 편의시설을 알려주세요!',
      description: "여러개 선택하셔도 되요!",
      options: [
        ...ConvenienceKey.values.map((value) {
          return SelectOption(
              text: '${value.name} ${value.emoji}', value: value.key);
        })
      ]),
  ////////////////////
  ////////////////////
  ////////////////////
];
