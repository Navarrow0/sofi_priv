import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/login/login_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0, viewportFraction: 0.85);

    final themeBaseLight = new ThemeLight();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                PageView(
                  controller: controller,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/illustrations/onboarding.png',
                          height: 300.0,
                          width: 300.0,
                        ),

                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Asistencia Inmediata\n',
                            style: TextStyle(
                                color: ThemeLight().colorSecondaryBlue,
                                fontFamily: ThemeLight().primaryFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0),
                            children: const <TextSpan>[
                              TextSpan(text: 'En tiempo real',
                                  style: TextStyle(
                                    color: Color(0xffE8C073)
                                  )),
                            ],
                          ),
                        ),
                        /*Text(
                          'Asistencia Inmediata\nEn tiempo real',
                          style: TextStyle(
                              color: ThemeLight().colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                          textAlign: TextAlign.center,
                        ),*/
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text(
                            'Con solo una llamada, deja todo en nuestras manos. Tú y tu familia estarán siempre protegidos y respaldados por la mejor empresa funeraria en México.',
                            style: TextStyle(
                              color: themeBaseLight.colorPrimaryLight,
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 185.0,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/illustrations/onboarding02@3x.png',
                          height: 300.0,
                          width: 300.0,
                        ),
                        /*Text(
                          'Asistencia Inmediata\nEn tiempo real',
                          style: TextStyle(
                              color: ThemeLight().colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                          textAlign: TextAlign.center,
                        ),*/
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Consulta tus Planes\ncontratados y adquiere',
                            style: TextStyle(
                                color: ThemeLight().colorSecondaryBlue,
                                fontFamily: ThemeLight().primaryFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0),
                            children: const <TextSpan>[
                              TextSpan(text: '\nservicios adicionales',
                                  style: TextStyle(
                                      color: Color(0xffE8C073)
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text(
                            'Desde Sofi accede a la información de tus Planes contratados, consulta tu siguiente pago y los beneficios incluidos o contrata un nuevo servicio.',
                            style: TextStyle(
                              color: themeBaseLight.colorPrimaryLight,
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 142.0,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/illustrations/onboarding03@3x.png',
                          height: 300.0,
                          width: 300.0,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Envía flores a tus\n',
                            style: TextStyle(
                                color: ThemeLight().colorSecondaryBlue,
                                fontFamily: ThemeLight().primaryFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0),
                            children: const <TextSpan>[
                              TextSpan(text: 'seres queridos',
                                  style: TextStyle(
                                      color: Color(0xffE8C073)
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum suscipit ex eget dui',
                            style: TextStyle(
                                color: themeBaseLight.colorPrimaryLight,
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 220.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 150.0),
                    child: SmoothPageIndicator(
                        controller: controller, // PageController
                        count: 3,
                        textDirection: TextDirection.ltr,
                        effect: ScrollingDotsEffect(
                          activeStrokeWidth: 2.6,
                          activeDotScale: 1.0,
                          maxVisibleDots: 5,
                          dotColor: Color(0xffDADEE3),
                          activeDotColor: Color(0xffE8C073),
                          radius: 6,
                          spacing: 20,
                          dotHeight: 8,
                          dotWidth: 50,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                        );
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: ThemeLight().colorGradientBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 72.0,
                          alignment: Alignment.center,
                          child: Text(
                            'Comenzar a usar sofí',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
