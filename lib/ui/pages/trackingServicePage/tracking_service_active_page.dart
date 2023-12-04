import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sofi/domains/blocs/branches_controller.dart';
import 'package:sofi/domains/blocs/trackingServiceBloc/tracking_service_active_controller.dart';
import 'package:sofi/domains/entities/MenuModel.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:timelines/timelines.dart';

import '../../../sofi_icons.dart';

class TrackingServiceActivePage extends StatelessWidget {
  const TrackingServiceActivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final themeBaseLight = ThemeLight();
    final branchesCtrl = Get.put(TrackingServiceActiveController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      drawer: MenuSofi(),
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
                margin: const EdgeInsets.only(top: 42),
                width: Get.width,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                    gradient: themeBaseLight.colorGradientRightBlue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              child: Builder(
                                builder: (context) => TextButton(
                                  onPressed: () =>
                                      Scaffold.of(context).openDrawer(),
                                  child: Icon(Icons.short_text_rounded,
                                      color: Colors.white),
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17.0))),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 225.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Primer contacto",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: themeContext
                                          .textTheme.headline1!.fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.38,
              maxChildSize: 0.85,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40.0))),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      controller: scrollController,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 55.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Servicio activo",
                                    style: TextStyle(
                                        color:
                                            themeBaseLight.colorSecondaryBlue,
                                        fontFamily: themeContext
                                            .textTheme.headline1!.fontFamily,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                                Row(
                                  children: [
                                    Container(
                                      width: 12.0,
                                      height: 12.0,
                                      margin: const EdgeInsets.only(right: 8.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: themeBaseLight
                                              .colorGradientGoldSecondary),
                                    ),
                                    Text("ONLINE",
                                        style: TextStyle(
                                            color: themeBaseLight
                                                .colorSecondaryBlue,
                                            fontFamily: themeContext
                                                .textTheme
                                                .headline1!
                                                .fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 29.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Material(
                                        borderRadius:
                                            BorderRadius.circular(17.0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          onTap: () {
                                            informationService(context);
                                          },
                                          child: Ink(
                                            decoration: BoxDecoration(
                                                color: Color(0xffF9F9FC),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        17.0)),
                                            width: 110,
                                            height: 132.0,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/info_icon.svg',
                                                  width: 45.0,
                                                  height: 45.0,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 9.0),
                                                  child: Text(
                                                    'Información',
                                                    style: TextStyle(
                                                        fontSize: 13.0,
                                                        color: themeBaseLight
                                                            .colorSecondaryBlue),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 22.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6.0),
                                              child: SvgPicture.asset(
                                                  'assets/icons/clock_icon.svg',
                                                  width: 12.0,
                                                  height: 12.0,
                                                  color: Color(0xff464F80)),
                                            ),
                                            Text(
                                              "30 minutos",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: themeContext
                                                      .textTheme
                                                      .headline1!
                                                      .fontFamily,
                                                  color: Color(0xff897464)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Material(
                                        borderRadius:
                                            BorderRadius.circular(17.0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          onTap: () {
                                            Navigator.pushNamed(context, '/TrackingServiceSharePage');
                                          },
                                          child: Ink(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/family_icon.svg',
                                                  width: 45.0,
                                                  height: 45.0,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 9.0),
                                                  child: Text(
                                                    'Compartir',
                                                    style: TextStyle(
                                                        fontSize: 13.0,
                                                        color: themeBaseLight
                                                            .colorSecondaryBlue),
                                                  ),
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF9F9FC),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        17.0)),
                                            width: 110,
                                            height: 132.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 22.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6.0),
                                              child: SvgPicture.asset(
                                                  'assets/icons/map_icon.svg',
                                                  width: 12.0,
                                                  height: 12.0,
                                                  color: Color(0xff464F80)),
                                            ),
                                            Text(
                                              "30 km",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: themeContext
                                                      .textTheme
                                                      .headline1!
                                                      .fontFamily,
                                                  color: Color(0xff897464)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Material(
                                        borderRadius:
                                            BorderRadius.circular(17.0),
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(17.0),
                                          onTap: () {
                                            tackingService(context);
                                          },
                                          child: Ink(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/shipping_icon.svg',
                                                  width: 45.0,
                                                  height: 45.0,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 9.0),
                                                  child: Text(
                                                    'Seguimiento',
                                                    style: TextStyle(
                                                        fontSize: 13.0,
                                                        color: themeBaseLight
                                                            .colorSecondaryBlue),
                                                  ),
                                                )
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF9F9FC),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        17.0)),
                                            width: 110,
                                            height: 132.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 22.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 6.0),
                                              child: SvgPicture.asset(
                                                  'assets/icons/users_icon.svg',
                                                  width: 12.0,
                                                  height: 12.0,
                                                  color: Color(0xff464F80)),
                                            ),
                                            Text(
                                              "2 abordo",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: themeContext
                                                      .textTheme
                                                      .headline1!
                                                      .fontFamily,
                                                  color: Color(0xff897464)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Estado del servicio",
                                        style: TextStyle(
                                            color: themeBaseLight
                                                .colorSecondaryBlue,
                                            fontFamily: themeContext.textTheme
                                                .headline1!.fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23.0),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 18.0,
                                          ))
                                    ],
                                  ),
                                  FixedTimeline(
                                    mainAxisSize: MainAxisSize.min,
                                    theme: TimelineThemeData(nodePosition: 0.0),
                                    children: [
                                      TimelineTile(
                                        contents: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'En camino a tu ubicación',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: themeBaseLight
                                                        .colorSecondaryBlue,
                                                    fontSize: 18.0),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      'La carroza va a recoger el cuerpo',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff9FA1A8),
                                                          fontSize: 12.5,
                                                          fontFamily: themeContext
                                                              .textTheme
                                                              .headline1!
                                                              .fontFamily)),
                                                  Text('12:30 am',
                                                      style: TextStyle(
                                                          color: themeBaseLight
                                                              .colorSecondaryBlue,
                                                          fontSize: 12.5,
                                                          fontFamily: themeContext
                                                              .textTheme
                                                              .headline1!
                                                              .fontFamily))
                                                ],
                                              )
                                            ],
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                          ),
                                          margin:
                                              const EdgeInsets.only(left: 16.0),
                                        ),
                                        node: TimelineNode(
                                            indicator: DotIndicator(
                                              child: Container(
                                                width: 38.0,
                                                height: 38.0,
                                                child: Icon(Sofi.icon_distance),
                                                decoration: BoxDecoration(
                                                    gradient: themeBaseLight.colorGradientGoldSecondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                            ),
                                            endConnector: SizedBox(
                                              height: 20.0,
                                              child: DashedLineConnector(
                                                dash: 5.0,
                                                color: Color(0xff707070)
                                                    .withOpacity(0.2),
                                              ),
                                            )),
                                      ),
                                      TimelineTile(
                                        contents: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'La funeraria acepto',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: themeBaseLight
                                                        .colorSecondaryBlue
                                                        .withOpacity(0.44),
                                                    fontSize: 18.0),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      'Tu solicitud esta en proceso',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff9FA1A8),
                                                          fontSize: 12.5,
                                                          fontFamily: themeContext
                                                              .textTheme
                                                              .headline1!
                                                              .fontFamily)),
                                                  Text('12:00 am',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff9FA1A8),
                                                          fontSize: 12.5,
                                                          fontFamily: themeContext
                                                              .textTheme
                                                              .headline1!
                                                              .fontFamily))
                                                ],
                                              )
                                            ],
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                          ),
                                          margin:
                                              const EdgeInsets.only(left: 16.0),
                                        ),
                                        node: TimelineNode(
                                          indicator: DotIndicator(
                                            child: Container(
                                              width: 38.0,
                                              height: 38.0,
                                              child: Icon(Sofi.icon_checkmark),
                                              decoration: BoxDecoration(
                                                  color: Color(0xffDEDCE5),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      TimelineTile(
                                        contents: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Servicio solicitado',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: themeBaseLight
                                                        .colorSecondaryBlue
                                                        .withOpacity(0.21),
                                                    fontSize: 18.0),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                      'Haz solicitado el servicio',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff9FA1A8)
                                                                  .withOpacity(
                                                                      0.40),
                                                          fontSize: 12.5,
                                                          fontFamily: themeContext
                                                              .textTheme
                                                              .headline1!
                                                              .fontFamily)),
                                                ],
                                              )
                                            ],
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                          ),
                                          margin:
                                              const EdgeInsets.only(left: 16.0),
                                        ),
                                        node: TimelineNode(
                                            indicator: DotIndicator(
                                              child: Container(
                                                width: 38.0,
                                                height: 38.0,
                                                child: Icon(Sofi.icon_services_soli),
                                                decoration: BoxDecoration(
                                                    color: Color(0xfff8f8fa),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              ),
                                            ),
                                            startConnector: SizedBox(
                                              height: 20.0,
                                              child: DashedLineConnector(
                                                dash: 5.0,
                                                color: Color(0xff707070)
                                                    .withOpacity(0.2),
                                              ),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MenuSofi extends StatelessWidget {
  const MenuSofi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final themeBase = ThemeLight();
    List<MenuModel> listMenu = [
      MenuModel(
          icon: Sofi.setting_icon,
          title: 'Documentación',
          onTap: () {
            return log("message");
          }),
      MenuModel(
          icon: Sofi.prevent_icon,
          title: 'Plan prevent',
          onTap: () {
            return log("message");
          }),
      MenuModel(
          icon: Sofi.help_icon,
          title: 'Preguntas frecuentes',
          onTap: () {
            return log("message");
          }),
    ];
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: Get.height / 1.60,
        width: Get.width,
        child: Drawer(
          elevation: 0.0,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Container(
                          width: 120.0,
                          child: Row(
                            children: [
                              Icon(
                                Icons.short_text_rounded,
                                size: 32.0,
                                color: Color(0xff3E358B),
                              ),
                              Text(
                                "Menú Sofi",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 23.0),
                      decoration: BoxDecoration(
                        color: Color(0xffEDF5F5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 128,
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Inicia sesión con sofi',
                                style: TextStyle(
                                    color: Color(0xffE5B73C),
                                    fontFamily: themeContext
                                        .textTheme.headline1!.fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Text(
                                  'Descubre los beneficios que tenemos\nPara ti',
                                  style: TextStyle(
                                      color: Color(0xff454E84),
                                      fontFamily: themeContext.textTheme
                                          .headline1!.fontFamily,
                                      fontSize: 12.0),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 28,
                                margin: const EdgeInsets.only(top: 10.0),
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    gradient: themeBase.colorGradientRightBlue),
                                child: MaterialButton(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text(
                                    'Registrarme',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                      fontFamily: themeContext.textTheme
                                          .headline1!.fontFamily,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(top: 14.0),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: listMenu.length,
                      itemBuilder: (ctx, index) {
                        return ListTile(
                          onTap: listMenu[index].onTap,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          minLeadingWidth: 32.0,
                          contentPadding: EdgeInsets.all(5.0),
                          leading: Container(
                            height: double.maxFinite,
                            child: Icon(
                              listMenu[index].icon,
                              size: 18.0,
                              color: themeBase.colorGold,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16.0,
                            color: Color(0xffB2B2CE),
                          ),
                          title: Text(
                            '${listMenu[index].title}',
                            style:
                                TextStyle(color: themeBase.colorSecondaryBlue),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void informationService(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_rounded)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Información",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff272C64))),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Image.asset(
                    "assets/imgs/carroza_img@3x.png",
                    fit: BoxFit.contain,
                    width: 244.0,
                    height: 90,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text("Cadillac Xts hearse",
                      style: TextStyle(fontSize: 22, color: Color(0xff272C64))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 47.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.0, color: Color(0xffB1BEDD)),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      "RKL3755",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff847F71),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  height: 340.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffeaecf2).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 25.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Responsables de primer contacto",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff272C64)))),
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (ctx, index) {
                                return Container(
                                  height: 60.0,
                                  child: ListTile(
                                    leading: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[FlutterLogo()],
                                    ),
                                    title: Text('Responsable 1',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffA4A7C1),
                                            fontFamily: 'NunitoSans')),
                                    subtitle: Text('Segio Ramos Lucas',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color(0xff272C64))),
                                  ),
                                );
                              },
                              itemCount: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text("Sucursal: Boutique Prim",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffA4A7C1),
                                    fontFamily: 'NunitoSans')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 138.0,
                                  height: 65.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF5F8FA),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0, right: 17.0),
                                        child: Image.asset(
                                          "assets/icons/call_icon@3x.png",
                                          fit: BoxFit.contain,
                                          width: 29.0,
                                          height: 29.0,
                                        ),
                                      ),
                                      Text('Llamar',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff567FDD),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'NunitoSans'))
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 138.0,
                                  height: 65.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF5F8FA),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0, right: 17.0),
                                        child: Image.asset(
                                          "assets/icons/chat_icon@3x.png",
                                          fit: BoxFit.contain,
                                          width: 29.0,
                                          height: 29.0,
                                        ),
                                      ),
                                      Text('Chat',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffBC52DC),
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'NunitoSans'))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              "Contacta al servicio de primer contacto, en caso de tener dudas, puedes llamar en cualquier momento y comunicarte con los responsables",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffA4A7C1),
                                  fontFamily: 'NunitoSans'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ));
      });
}

void tackingService(context) {
  final themeContext = Theme.of(context);
  final themeBaseLight = ThemeLight();
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.0))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.75,
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_rounded)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Seguimiento",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff272C64))),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Container(
                      width: 369.0,
                      height: 155.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          gradient: LinearGradient(
                            colors: [Color(0xff4F78AE), Color(0xff262158)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, right: 16.0, top: 13.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Orden: 000644',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        )),
                                    Text('14/abril/2021 6:00pm',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white.withOpacity(0.39),
                                        )),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('En proceso'),
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xffE8A94C),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0))),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 26.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Av. San Jerónimo Nº 140',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: 'NunitoSans')),
                                  Divider(
                                    color: Colors.white,
                                  ),
                                  Text(
                                      'General Prim nº 57, Col Juarez Cuauhtémoc',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontFamily: 'NunitoSans')),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),


                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        Align(
                          child: Text("Historial del servicio", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: themeBaseLight.colorSecondaryBlue,
                          ),),
                          alignment: Alignment.centerLeft,
                        ),
                        FixedTimeline(
                          mainAxisSize: MainAxisSize.min,
                          theme: TimelineThemeData(nodePosition: 0.0),
                          children: [
                            TimelineTile(
                              contents: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'En camino a tu ubicación',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeBaseLight
                                              .colorSecondaryBlue,
                                          fontSize: 18.0),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                            'La carroza va a recoger el cuerpo',
                                            style: TextStyle(
                                                color:
                                                Color(0xff9FA1A8),
                                                fontSize: 12.5,
                                                fontFamily: themeContext
                                                    .textTheme
                                                    .headline1!
                                                    .fontFamily)),
                                        Text('12:30 am',
                                            style: TextStyle(
                                                color: themeBaseLight
                                                    .colorSecondaryBlue,
                                                fontSize: 12.5,
                                                fontFamily: themeContext
                                                    .textTheme
                                                    .headline1!
                                                    .fontFamily))
                                      ],
                                    )
                                  ],
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                ),
                                margin:
                                const EdgeInsets.only(left: 16.0),
                              ),
                              node: TimelineNode(
                                  indicator: DotIndicator(
                                    child: Container(
                                      width: 38.0,
                                      height: 38.0,
                                      decoration: BoxDecoration(
                                          gradient: themeBaseLight
                                              .colorGradientGoldSecondary,
                                          borderRadius:
                                          BorderRadius.circular(
                                              8)),
                                    ),
                                  ),
                                  endConnector: SizedBox(
                                    height: 20.0,
                                    child: DashedLineConnector(
                                      dash: 5.0,
                                      color: Color(0xff707070)
                                          .withOpacity(0.2),
                                    ),
                                  )),
                            ),
                            TimelineTile(
                              contents: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'La funeraria acepto',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeBaseLight
                                              .colorSecondaryBlue
                                              .withOpacity(0.44),
                                          fontSize: 18.0),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                            'Tu solicitud esta en proceso',
                                            style: TextStyle(
                                                color:
                                                Color(0xff9FA1A8),
                                                fontSize: 12.5,
                                                fontFamily: themeContext
                                                    .textTheme
                                                    .headline1!
                                                    .fontFamily)),
                                        Text('12:00 am',
                                            style: TextStyle(
                                                color:
                                                Color(0xff9FA1A8),
                                                fontSize: 12.5,
                                                fontFamily: themeContext
                                                    .textTheme
                                                    .headline1!
                                                    .fontFamily))
                                      ],
                                    )
                                  ],
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                ),
                                margin:
                                const EdgeInsets.only(left: 16.0),
                              ),
                              node: TimelineNode(
                                indicator: DotIndicator(
                                  child: Container(
                                    width: 38.0,
                                    height: 38.0,
                                    decoration: BoxDecoration(
                                        color: Color(0xffDEDCE5),
                                        borderRadius:
                                        BorderRadius.circular(8)),
                                  ),
                                ),
                              ),
                            ),
                            TimelineTile(
                              contents: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Servicio solicitado',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: themeBaseLight
                                              .colorSecondaryBlue
                                              .withOpacity(0.21),
                                          fontSize: 18.0),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'Haz solicitado el servicio',
                                            style: TextStyle(
                                                color:
                                                Color(0xff9FA1A8)
                                                    .withOpacity(
                                                    0.40),
                                                fontSize: 12.5,
                                                fontFamily: themeContext
                                                    .textTheme
                                                    .headline1!
                                                    .fontFamily)),
                                      ],
                                    )
                                  ],
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                ),
                                margin:
                                const EdgeInsets.only(left: 16.0),
                              ),
                              node: TimelineNode(
                                  indicator: DotIndicator(
                                    child: Container(
                                      width: 38.0,
                                      height: 38.0,
                                      decoration: BoxDecoration(
                                          color: Color(0xfff8f8fa),
                                          borderRadius:
                                          BorderRadius.circular(
                                              8)),
                                    ),
                                  ),
                                  startConnector: SizedBox(
                                    height: 20.0,
                                    child: DashedLineConnector(
                                      dash: 5.0,
                                      color: Color(0xff707070)
                                          .withOpacity(0.2),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ],
                    )
                )
              ],
            ));
      });
}
