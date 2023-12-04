import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sofi/domains/blocs/branches_controller.dart';
import 'package:sofi/themes/themeLight.dart';

class BranchesGoogleMapsPage extends StatelessWidget {
  const BranchesGoogleMapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final themeBaseLight = ThemeLight();
    final branchesCtrl = Get.put(BranchesController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: BranchesController.kGooglePlex,
              myLocationEnabled: false,
              onMapCreated: (GoogleMapController _controller) {
                if (!branchesCtrl.googleMapcontroller.isCompleted) {
                  branchesCtrl.googleMapcontroller.complete(_controller);
                }
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 60, left: 20.0, right: 20.0),
                child: Expanded(
                  flex: 4,
                  child: TextField(
                    style: TextStyle(
                        fontFamily: themeContext.textTheme.headline1!.fontFamily),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Buscar sucursal',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      width: Get.width,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          gradient: themeBaseLight.colorGradient90Blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 115,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 225.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Casa pedregal",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: themeContext.textTheme
                                                .headline1!.fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Av. San jeronimo Nº140. Col San Angeles, Alvaro Obregon",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("20 minutos",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color:
                                            themeBaseLight.colorSecondaryBlue,
                                      ),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17.0))),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 115,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 225.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Casa pedregal",
                                        style: TextStyle(
                                            color: themeBaseLight
                                                .colorSecondaryBlue,
                                            fontFamily: themeContext.textTheme
                                                .headline1!.fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Av. San jeronimo Nº140. Col San Angeles, Alvaro Obregon",
                                          style: TextStyle(
                                              color: themeBaseLight
                                                  .colorSecondaryBlue,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("20 minutos",
                                          style: TextStyle(
                                              color: themeBaseLight
                                                  .colorSecondaryBlue,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17.0)),
                                        gradient:
                                            themeBaseLight.colorGradient90Blue),
                                    child: MaterialButton(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.0)),
                                      padding: EdgeInsets.zero,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 115,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 225.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Casa pedregal",
                                        style: TextStyle(
                                            color: themeBaseLight
                                                .colorSecondaryBlue,
                                            fontFamily: themeContext.textTheme
                                                .headline1!.fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                          "Av. San jeronimo Nº140. Col San Angeles, Alvaro Obregon",
                                          style: TextStyle(
                                              color: themeBaseLight
                                                  .colorSecondaryBlue,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("20 minutos",
                                          style: TextStyle(
                                              color: themeBaseLight
                                                  .colorSecondaryBlue,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                              fontSize: 12.0)),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17.0)),
                                        gradient:
                                            themeBaseLight.colorGradient90Blue),
                                    child: MaterialButton(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.0)),
                                      padding: EdgeInsets.zero,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
