import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/cameraCertificateBloc/camera_certificate_controller.dart';
import 'package:sofi/domains/blocs/helpBloc/immediate_help_controller.dart';
import 'package:sofi/domains/entities/MenuModel.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/homePage/faq_page.dart';
import 'package:sofi/ui/pages/needHelpPage/widgets/WaterRipple.dart';
import 'package:sofi/ui/widgets/banner_widget.dart';

import '../../../sofi_icons.dart';

final themeBaseLight = ThemeLight();
class NeedHelpPage extends StatefulWidget {
  @override
  _NeedHelpPageState createState() => _NeedHelpPageState();
}

class _NeedHelpPageState extends State<NeedHelpPage> {
  @override
  Widget build(BuildContext context) {
    ImmediateHelpController immediateHelpController = Get.put(ImmediateHelpController());
    final cameraCertificateController = Get.put(CameraCertificateController());

    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffE8BD70), Color(0xffEDD185)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 400.0));

    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      drawer: MenuSofi(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffFCFCFC),
          statusBarBrightness: Brightness.light
        ),
        leading: Builder(
            builder: (context) => Ink(
              width: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff4F78AE).withOpacity(0.07)
              ),
              child: IconButton(
                    icon: Icon(Icons.short_text_rounded,
                        size: 32.0, color: Color(0xff3E358B)),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Av. San Jerónimo Nº 140\n',
                      style: TextStyle(
                        color: themeBaseLight.colorSecondaryBlue,
                        fontSize: 13.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Mi ubicación actual',
                      style: TextStyle(
                          color: themeBaseLight.colorGold, fontSize: 12.0),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 6.0,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(12.0),
                  onTap: () {
                    Navigator.pushNamed(context, '/BrancesGoogleMaps');
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff4F78AE).withOpacity(0.07)
                    ),
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Sofi.pin_icon,
                      color: themeBaseLight.colorSecondaryBlue,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xffFCFCFC)
            /*image: DecorationImage(
              image: AssetImage('assets/imgs/snazzy.png'),
              fit: BoxFit.cover,
            )*/
            ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Text(
                    'Hola, Necesitas\nayuda?',
                    style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontFamily:
                          Theme.of(context).textTheme.headline1!.fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Presiona el botón, enlaceremos la\nllamada a nuestro centro más cercano',
                  style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontSize: 15.0,
                      ),
                  textAlign: TextAlign.center,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        width: 285.0,
                        height: 285.0,
                        child: WaterRipple(
                          count: 4,
                          color: Color(0xff4C72A8),
                        )),
                    Align(
                        child: Container(
                      width: 165.0,
                      height: 165.0,
                      child: TextButton(
                        onLongPress: () {
                          Navigator.pushNamed(context, '/TrackingServicePage');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Sofi',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            primary: Colors.white,
                            shape: CircleBorder(),
                            backgroundColor: Color(0xff3E548B)),
                        onPressed: () {
                          showCertificate(context);
                        },
                      ),
                    )),
                  ],
                ),
                Container(
                  height: 179.0,
                )
              ],
            ),
            /*Positioned(
              bottom: 0,
              child: ServicesForYour(
                themeBaseLight: themeBaseLight,
              ),
            )*/
            Positioned(
              child: ServicesForYou(),
              bottom: 0,
            )
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
    final themeBase = ThemeLight();
    List<MenuModel> listMenu = [
      MenuModel(
          icon: Sofi.setting_icon,
          title: 'Configuración',
          onTap: () {
            Navigator.pushNamed(context, '/SettingsPage');
          }),
      MenuModel(
          icon: Sofi.prevent_icon,
          title: 'Plan prevent',
          onTap: () {
            Navigator.pushNamed(context, '/PlanPreventPage');
          }),
      MenuModel(
          icon: Sofi.help_icon,
          title: 'Preguntas frecuentes',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return FaqPage();
              }),
            );
          }),
    ];
    return Container(
      width: Get.width,
      child: Drawer(
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
                        width: 125.0,
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
                    height: 135,
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Text(
                                'Descubre los beneficios que tenemos\nPara ti',
                                style: TextStyle(
                                    color: Color(0xff454E84), fontSize: 12.0),
                              ),
                            ),
                            Container(
                              width: 115,
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
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  'Registrarme',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
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
                          style: TextStyle(color: themeBase.colorSecondaryBlue),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            BannerWidget(
              themeBaseLight: themeBase,
            )
          ],
        ),
      ),
    );
  }
}

class ServicesForYou extends StatelessWidget {
  const ServicesForYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImmediateHelpController>(
        id: 'servicesForYou',
        builder: (_) {
          return SizedBox(
            width: Get.width,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              height: _.isTapped
                  ? _.isExpanded ? 180 : 180
                  : _.isExpanded ? 290 : 290,
              width: Get.width,
              margin: EdgeInsets.only(left: 11.0, right: 11.0, bottom: 20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff00000D).withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: _.isTapped
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Color(0xffD6D9E5),
                        borderRadius: BorderRadius.circular(100.0)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 9.0,
                              height: 9.0,
                              margin: const EdgeInsets.only(
                                  right: 11.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      100.0),
                                  gradient: themeBaseLight.colorGradientGoldSecondary),
                            ),
                            Text(
                              'Servicios para ti',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: _.isPressedKnowMore,
                          child: Row(
                            children: [
                              Text(
                                'Saber más',
                                style: TextStyle(fontSize: 12.0),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                              )
                            ],
                          ),
                          style: TextButton.styleFrom(
                            primary: themeBaseLight.colorSecondaryBlue,
                            splashFactory: NoSplash.splashFactory,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          onTap: () {
                            Navigator.pushNamed(context, '/MarketPlaceHomePage');
                          },
                          child: Ink(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/icons/tienda_icon.png'),
                                      ),
                                      color:
                                      Color(0xffCED4F2).withOpacity(0.14),
                                      borderRadius:
                                      BorderRadius.circular(100.0)),
                                  width: 57.0,
                                  height: 57.0,
                                  margin: const EdgeInsets.only(bottom: 7.0),
                                ),
                                Text(
                                  'Tienda',
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          onTap: () {
                            Navigator.pushNamed(context, '/PlanPreventHomePage');
                          },
                          child: Ink(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/planes_icon.png'),
                                      ),
                                      color:
                                      Color(0xffCED4F2).withOpacity(0.14),
                                      borderRadius:
                                      BorderRadius.circular(100.0)),
                                  width: 57.0,
                                  height: 57.0,
                                  margin: const EdgeInsets.only(bottom: 7.0),
                                ),
                                Text(
                                  'Planes JGL',
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          onTap: () {
                            Navigator.pushNamed(context, '/AditionalHomePage');
                          },
                          child: Ink(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/adicionales_icon.png'),
                                      ),
                                      color:
                                      Color(0xffCED4F2).withOpacity(0.14),
                                      borderRadius:
                                      BorderRadius.circular(100.0)),
                                  width: 57.0,
                                  height: 57.0,
                                  margin: const EdgeInsets.only(bottom: 7.0),
                                ),
                                Text(
                                  'Adicionales',
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10.0),
                          onTap: () {},
                          child: Ink(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/comprar_icon.png'),
                                      ),
                                      color:
                                      Color(0xffCED4F2).withOpacity(0.14),
                                      borderRadius:
                                      BorderRadius.circular(100.0)),
                                  width: 57.0,
                                  height: 57.0,
                                  margin: const EdgeInsets.only(bottom: 7.0),
                                ),
                                Text(
                                  'Comprar plan',
                                  style: TextStyle(fontSize: 10.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
                  : Column(
                children: [
                  Container(
                    width: 50,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Color(0xffD6D9E5),
                        borderRadius: BorderRadius.circular(100.0)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 9.0,
                            height: 9.0,
                            margin: const EdgeInsets.only(
                                right: 11.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    100.0),
                                gradient: themeBaseLight.colorGradientGoldSecondary),
                          ),
                          Text(
                            'Servicios para ti',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: _.isPressedKnowMore,
                        child: Row(
                          children: [
                            Text(
                              'Saber más',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                            )
                          ],
                        ),
                        style: TextButton.styleFrom(
                          primary:
                          themeBaseLight.colorSecondaryBlue,
                          splashFactory: NoSplash.splashFactory,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              Navigator.pushNamed(context, '/MarketPlaceHomePage');
                            },
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/tienda_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Tienda',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              Navigator.pushNamed(context, '/PlanPreventHomePage');
                            },
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/planes_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Planes JGL',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {Navigator.pushNamed(context, '/AditionalHomePage');},
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/adicionales_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Adicionales',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/comprar_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Comprar plan',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {},
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/sucursales_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Sucursales',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              Navigator.pushNamed(context, '/OrbituaryHomePage');
                            },
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/obituario_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Orbituario',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              Navigator.pushNamed(context, '/InnovationHomePage');
                            },
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/innovaccion_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Innovación',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.white,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10.0),
                            onTap: () {
                              Navigator.pushNamed(context, '/AboutUs');
                            },
                            child: Ink(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/nosotros_icon.png'),
                                        ),
                                        color:
                                        Color(0xffCED4F2).withOpacity(0.14),
                                        borderRadius:
                                        BorderRadius.circular(100.0)),
                                    width: 57.0,
                                    height: 57.0,
                                    margin: const EdgeInsets.only(bottom: 7.0),
                                  ),
                                  Text(
                                    'Nosotros',
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

void showCertificate(context) {
  final themeContext = Theme.of(context);
  final themeBaseLight = ThemeLight();
  var result;
  showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, bottom: 32.0, top: 37.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              ),
              height: MediaQuery.of(context).copyWith().size.height * 0.80,
              padding: const EdgeInsets.all(26.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width,
                    child: Column(
                      children: [
                        Container(
                          width: 43,
                          height: 3,
                          margin: const EdgeInsets.only(bottom: 7),
                          decoration: BoxDecoration(
                              color: Color(0xffE4E7F2),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        Container(
                          width: 43,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Color(0xffE4E7F2),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 47.0),
                    child: Text(
                      'Necesitamos tus certificado\nde defunción para continuar con\nel proceso',
                      style: TextStyle(
                        color: themeBaseLight.colorSecondaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Esto va agilizar el proceso de documentación Y será más rápido",
                      style: TextStyle(
                          color: Color(0xff847F71),
                          fontFamily: themeContext
                              .textTheme.headline1!.fontFamily,
                          fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 67.0),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      strokeWidth: 2,
                      dashPattern: [8, 4],
                      color: Color(0xffC6C9DE),
                      child: Material(
                        child: InkWell(
                          onTap: () async {
                            result = await Navigator.pushNamed(
                                context, '/CameraCertificatePage');
                          },
                          child: Ink(
                            height: 163.0,
                            width: Get.width,
                            color: Color(0xfff5f7fb),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  width: Get.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/upload.png",
                                        fit: BoxFit.contain,
                                        width: 42.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: '*Carga una ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: themeContext
                                                  .textTheme
                                                  .headline1!
                                                  .fontFamily,
                                            ),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: 'foto',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(text: ' o '),
                                              TextSpan(
                                                  text: 'documento',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text:
                                                      '\nDel certificado de defunción*'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GetBuilder<CameraCertificateController>(
                      id: 'imageCameraCertificate',
                      builder: (controller) {
                        return result != null
                            ? Padding(
                                padding: const EdgeInsets.only(top: 22.0),
                                child: Center(
                                    child: Image.file(
                                        File(result.path.toString()))),
                              )
                            : SizedBox();
                      }),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Center(
                      child: Text(
                        '¿Qué es el certificado de defunción?',
                        style: TextStyle(
                          color: Color(0xff847F71),
                          fontFamily: themeContext
                              .textTheme.headline1!.fontFamily,
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        );
      });
}
