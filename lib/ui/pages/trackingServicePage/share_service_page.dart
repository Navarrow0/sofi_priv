import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/themes/themeLight.dart';

class TrackingServiceSharePage extends StatelessWidget {
  const TrackingServiceSharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    final themeBaseLight = ThemeLight();
    return Scaffold(
      backgroundColor: Color(0xffFCFCFF),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Compartir",
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.normal,
              color: themeBaseLight.colorSecondaryBlue),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Ink(
              width: Get.width,
              height: 250.0,
              decoration:
                  BoxDecoration(gradient: themeBaseLight.colorGradient90Blue),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(12.0),
                width: Get.width,
                height: 166.0,
                color: Color(0xffF0ECF4),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Estamos contigo en los\nmomentos más difíciles.",
                                style: TextStyle(
                                  color: themeBaseLight.colorSecondaryBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Desde 1981 nos ha motivado nuestra filosofía: Hacer más fáciles los momentos difíciles®",
                                  style: TextStyle(
                                      color: Color(0xff6E718E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0,
                                      fontFamily: 'NunitoSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 150.0,
                          child: Image.asset(
                            'assets/illustrations/banner_img@3x.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12.0, left: 29.0, bottom: 20.0),
                  child: Text(
                    "Selecciona una plantilla para enviar a un\nSer querido",
                    style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 420.0,
                child: PageView(
                  controller:
                      PageController(viewportFraction: 0.80, initialPage: 0),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30.0),
                        onTap: () {
                          previewInvitation(context);
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffFFC6C6C6).withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/imgs/invitacion_vista@3x.png',
                                  height: 340.0,
                                ),
                                Text(
                                  "Invitación funebre 01",
                                  style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      fontFamily: 'NunitoSans'),
                                ),
                                Text(
                                  "Creada por Javier",
                                  style: TextStyle(
                                      color: Color(0xff999BB1),
                                      fontSize: 13.0,
                                      fontFamily: 'NunitoSans'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30.0),
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffFFC6C6C6).withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/imgs/invitacion_vista@3x.png',
                                  height: 340.0,
                                ),
                                Text(
                                  "Invitación funebre 01",
                                  style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      fontFamily: 'NunitoSans'),
                                ),
                                Text(
                                  "Creada por Javier",
                                  style: TextStyle(
                                      color: Color(0xff999BB1),
                                      fontSize: 13.0,
                                      fontFamily: 'NunitoSans'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30.0),
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffFFC6C6C6).withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/imgs/invitacion_vista@3x.png',
                                  height: 340.0,
                                ),
                                Text(
                                  "Invitación funebre 01",
                                  style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      fontFamily: 'NunitoSans'),
                                ),
                                Text(
                                  "Creada por Javier",
                                  style: TextStyle(
                                      color: Color(0xff999BB1),
                                      fontSize: 13.0,
                                      fontFamily: 'NunitoSans'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void previewInvitation(context) {
  final themeContext = Theme.of(context);
  final themeBaseLight = ThemeLight();
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Vista previa",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff272C64))),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        );
      },
  );
}
