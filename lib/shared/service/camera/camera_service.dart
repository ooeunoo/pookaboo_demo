import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class CameraService {
  XFile? _image;
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  late List<CameraDescription> _cameras;

  List<CameraDescription> get cameras => _cameras;

  Future<void> init() async {
    _cameras = await availableCameras();
  }

  Future<void> takePicture(CameraController controller) async {
    if (!controller.value.isInitialized) {
      return;
    }

    try {
      // 사진 촬영
      final XFile file = await controller.takePicture();

      // import 'dart:io';
      // 사진을 저장할 경로 : 기본경로(storage/emulated/0/)
      Directory directory = Directory('storage/emulated/0/DCIM/MyImages');

      // 지정한 경로에 디렉토리를 생성하는 코드
      // .create : 디렉토리 생성    recursive : true - 존재하지 않는 디렉토리일 경우 자동 생성
      await Directory(directory.path).create(recursive: true);

      // 지정한 경로에 사진 저장
      await File(file.path).copy('${directory.path}/${file.name}');
    } catch (e) {
      print('Error taking picture: $e');
    }
  }
}
