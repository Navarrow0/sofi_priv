import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/orbituaryHomeController/obituary_profile_controller.dart';
import 'package:sofi/themes/themeLight.dart';

class ObituaryProfilePage extends StatelessWidget {
  const ObituaryProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBaseLight = new ThemeLight();

    return GetBuilder<ObituaryProfileController>(
        init: ObituaryProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color(0xffFAFAFA),
            appBar: AppBar(
                backgroundColor: Color(0xff2F3664),
                centerTitle: true,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Color(0xff2F3664),
                ),
                title: Text("Salvador Eduardo")),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 48.0, bottom: 90),
                          height: 260.0,
                          width: Get.width,
                          color: Color(0xff2F3664),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100.0,
                                margin: const EdgeInsets.only(right: 20.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/imgs/foto01@3x.png"))),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 230.0,
                                    child: Text(
                                      "LA FAMILIA Y AMIGOS LE COMUNICA EL SENSIBLE FALLECIMIENTO DE",
                                      style: TextStyle(
                                          color: Color(0xffE8C073),
                                          fontSize: 12.0),
                                    ),
                                  ),
                                  Container(
                                    width: 240.0,
                                    child: Text(
                                      "SALVADOR EDUARDO GUERRERO GARZAFOX",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 17.0),
                                    child: Text("21 de julio 2021",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13.0)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 48.0, left: 24, right: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DATOS DEL\nFUNERAL",
                                style: TextStyle(
                                    color: Color(0xffC2A26E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                              Text(
                                "Ocurrido en la Ciudad de México el  21 de julio del 2021, agradecemos una profunda oración en su memoria",
                                style: TextStyle(
                                  color: Color(0xff2F3664),
                                  fontSize: 13.0,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 37.0),
                                child: Text(
                                  "HOMENAJE",
                                  style: TextStyle(
                                      color: Color(0xffC2A26E),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                margin: const EdgeInsets.only(top: 17.0),
                                child: Text(
                                  "En domicilio, cremación Jueves 22 de julio de 2021 a las 12:00 horas",
                                  style: TextStyle(
                                    color: Color(0xff2F3664),
                                    fontSize: 13.0,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      top: 215.0,
                      right: 20.0,
                      child: Container(
                        width: 167.0,
                        height: 53,
                        margin: const EdgeInsets.only(top: 20.0),
                        decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            gradient: themeBaseLight.colorGradientLeftGoldDark,
                            shadows: [
                              BoxShadow(
                                color: Color(0xff9BA7B5).withOpacity(0.09),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: MaterialButton(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(0.0),
                          child: Text(
                            'Enviar flores',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}
