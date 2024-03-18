import 'package:flutter/material.dart';

class CreateOrUpdateToilet extends StatefulWidget {
  const CreateOrUpdateToilet({super.key});

  @override
  _CreateOrUpdateToiletState createState() => _CreateOrUpdateToiletState();
}

class _CreateOrUpdateToiletState extends State<CreateOrUpdateToilet> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
// import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
// import 'package:pookaboo/shared/extension/context.dart';
// import 'package:pookaboo/shared/styles/dimens.dart';
// import 'package:pookaboo/shared/widgets/common/app_text.dart';

// enum CreateOrUpdateToiletStep { basic, equipment, convenience, time }

// class CreateOrUpdateToilet extends StatefulWidget {
//   final Toilet? toilet;

//   const CreateOrUpdateToilet({super.key, this.toilet});

//   @override
//   _CreateOrUpdateToiletState createState() => _CreateOrUpdateToiletState();
// }

// class _CreateOrUpdateToiletState extends State<CreateOrUpdateToilet> {
//   CreateOrUpdateToiletStep step = CreateOrUpdateToiletStep.basic;

//   CreateToiletParam toiletForm = CreateToiletParam(
//       name: '',
//       type: 0,
//       gender: false,
//       password: false,
//       password_tip: '',
//       address: '',
//       road_address: '',
//       location_tip: '',
//       city: '');

//   CreateConvenienceParams convenienceForm = CreateConvenienceParams(
//     bell: false,
//     paper: false,
//     towel: false,
//     soap: false,
//     powder_room: false,
//     hand_dry: false,
//     vending: false,
//     diaper: false,
//   );

//   CreateEquipmentParams equipmentForm = CreateEquipmentParams(
//       child_seat: [0, 0, 0],
//       urinal: [0, 0, 0],
//       child_urinal: [0, 0, 0],
//       disable_urinal: [0, 0, 0],
//       seat: [0, 0, 0],
//       disable_seat: [0, 0, 0],
//       washbasin: [0, 0, 0]);

//   CreateTimeParams timeForm = CreateTimeParams(
//       mon: OperateTime(open: null, close: null),
//       tue: OperateTime(open: null, close: null),
//       wed: OperateTime(open: null, close: null),
//       thu: OperateTime(open: null, close: null),
//       fri: OperateTime(open: null, close: null),
//       sat: OperateTime(open: null, close: null),
//       sun: OperateTime(open: null, close: null));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Padding(
//             padding: EdgeInsets.only(left: Dimens.space16),
//             child: IconButton(
//               icon: const Icon(Icons.arrow_back_ios),
//               onPressed: () {
//                 context.back();
//               },
//             ),
//           ),
//           title: AppText(
//             '신규 화장실 제안하기',
//             style: Theme.of(context).textTheme.bodyLarge!,
//           ),
//         ),
//         body: Container());
//   }
// }
