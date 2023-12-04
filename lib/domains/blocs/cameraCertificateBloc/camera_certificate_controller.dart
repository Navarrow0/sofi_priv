

import 'package:camera/camera.dart';
import 'package:get/get.dart';

class CameraCertificateController extends GetxController{

  late List<CameraDescription> cameras;

  late CameraController cameraController;

  @override
  void onInit() {
    super.onInit();
    camerasAvaible();
  }

  @override
  void onReady() {
    super.onReady();

  }

  @override
  void onClose() {
    super.onClose();
    cameraController.dispose();
  }

  Future<void> camerasAvaible() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);
    await cameraController.initialize().then((_) {
      update();
    });

  }

}