import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/cameraCertificateBloc/camera_certificate_controller.dart';

class CameraCertificatePage extends StatelessWidget {
  const CameraCertificatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cameraCertificateCtrl = Get.put(CameraCertificateController());
    if (!cameraCertificateCtrl.cameraController.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      /*floatingActionButton: FloatingActionButton(onPressed: () async {

        try{

          cameraCertificateCtrl.cameraController.setFlashMode(FlashMode.off);
          Navigator.pop(context, await cameraCertificateCtrl.cameraController.takePicture());
          cameraCertificateCtrl.update(["imageCameraCertificate"]);

        }catch(e){
          print("$e");
        }

      }, child: Icon(Icons.camera_alt_rounded),),*/
      body: Stack(
        children: [
          CameraPreview(cameraCertificateCtrl.cameraController,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: Get.width,
              height: 280.0,
              color: Color(0xff080628),
              child: Column(
                children: [

                  SizedBox(
                    height: 170.0,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
                      itemCount: 3, scrollDirection: Axis.horizontal, shrinkWrap: true,
                      itemBuilder: (ctx, index){
                      return Container(
                        width: 300,

                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/icons/document_icon.svg"),
                              Column(
                                children: [

                                ],
                              )
                            ],
                          )
                        ),
                      );
                    }, ),
                  ),

                  Divider(
                    color: Colors.white,
                  ),

                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/icons/gallery_close.png'), height: 25.0), iconSize: 5.0,),
                      IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/icons/button_capture.png'),), iconSize: 70.0, ),
                      IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/icons/gallery_camera.png'), height: 25.0,), iconSize: 5.0,),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  )
                  /*Row(
                    children: [
                      ListView.builder(
                          itemBuilder: (ctx, index){
                        return Container(
                          height: 200.0,
                          width: 20.0,
                          child: Card(

                          ),
                        );
                      }, itemCount: 3, shrinkWrap: true, scrollDirection: Axis.horizontal,)
                    ],
                  ),*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
