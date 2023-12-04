import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sofi/themes/themeLight.dart';

import '../../../sofi_icons.dart';

final themeBaseLight = ThemeLight();

class PlanDetailPage extends StatefulWidget {
  const PlanDetailPage({Key? key}) : super(key: key);

  @override
  _PlanDetailPageState createState() => _PlanDetailPageState();
}

class _PlanDetailPageState extends State<PlanDetailPage> with SingleTickerProviderStateMixin {

  late TabController tabController;
  PageController mPageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging){
        mPageController.animateToPage(tabController.index, duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backwardsCompatibility: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xffFCFCFC),
            statusBarBrightness: Brightness.light),
      ),
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarBrightness: Brightness.dark),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              TabBar(
                  indicatorColor: Color(0xffD9AB4E),
                  labelColor: Color(0xffD9AB4E),
                  unselectedLabelColor: Color(0xff111946),
                  controller: tabController,
                  physics: BouncingScrollPhysics(),
                  tabs: [
                Tab(
                  text: 'Detalles de plan',
                ),
                Tab(
                  text: 'Kit de bienvenida',
                )
              ]),


              ExpandablePageView(
                controller: mPageController,
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250.0,
                        margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF0C22A).withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlutterLogo(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Plan Aniversario",
                                        style: TextStyle(
                                            color: themeBaseLight.colorSecondaryBlue,
                                            fontSize: 13.0,
                                          fontWeight: FontWeight.w600
                                        ),
                                    ),
                                    Text("Estás protegido",
                                      style: TextStyle(
                                          color: Color(0xff5E6F8D),
                                          fontSize: 10.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Text("Seguro de vida por \$50,000. (1)",
                                        style: TextStyle(
                                            color: themeBaseLight.colorSecondaryBlue,
                                            fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text("\$34,040.00",
                                  style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600
                                  ),
                                )
                              ],
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 32.0, bottom: 19.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Métodos de pago",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text("Tarjeta de crédito",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: FlutterLogo(),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("**** **** **** 3487",
                                        style: TextStyle(
                                            color: themeBaseLight.colorSecondaryBlue,
                                            fontSize: 12.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10.0),
                                        child: Text("Mauricio López",
                                          style: TextStyle(
                                            color: themeBaseLight.colorSecondaryBlue,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("Cambiar",
                                  style: TextStyle(
                                      color: themeBaseLight.colorGold,
                                      fontSize: 12.0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 250.0,
                        margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF0C22A).withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Siguiente pago",
                                  style: TextStyle(
                                    color: themeBaseLight.colorSecondaryBlue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),

                                Text("Cambiar plan",
                                  style: TextStyle(
                                    color: themeBaseLight.colorGold,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                              child: Text("Debido a",
                                style: TextStyle(
                                  color: Color(0xff5E6F8D),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("20 de abril, 2021",
                                  style: TextStyle(
                                    color: themeBaseLight.colorSecondaryBlue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),

                                Text("\$2,833.33",
                                  style: TextStyle(
                                    color: themeBaseLight.colorSecondaryBlue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(),
                                  Text("2 Pagos de 12 realizados",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              width: Get.width,
                              child: TextButton(
                                onPressed: () {  },
                                child: Text('Liquidar mi plan'),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(17.0)
                                ),
                              ),
                            )

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 20.0, left: 22.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Historial de pago",
                            style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),

                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (ctx, index){
                        return Container(
                          height: 68.0,
                          margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 15.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffF0F2F8)
                              ),
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("FEB",
                                    style: TextStyle(
                                      color: Color(0xff5E6F8D),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text("20",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("\$2,833.33",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  Text("2 Mensualidades , Plan Aniversario",
                                    style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),

                      Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 20.0, left: 22.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Beneficios de tu plan",
                            style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: 130.0,
                        margin: const EdgeInsets.only(left: 22.0),
                        child: ListView.builder(
                            itemCount: 4,
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index){
                          return Container(
                            height: 130,
                            width: 250.0,
                            decoration: BoxDecoration(
                                color: Color(0xffF8FBFD),
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Sofi.headphone_icon, color: Color(0xffD9AB4E),),
                                Text('ATENCIÓN Y ASESORÍA PERSONALIZADA', style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0
                                ),),
                                Text('Las 24 horas, los 365 días del año.', style: TextStyle(
                                    color: Color(0xff5E6F8D),
                                    fontSize: 10.0
                                ),)
                              ],
                            ),
                          );
                        }),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 18.0, left: 22.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Servicio Funerario integral con:",
                            style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text('Seguro de vida por \$50,000. (1)', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Atención y asesoría personalizada las 24 horas, los 365 días del año.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Traslado en la CDMX y área metropolitana. Trámites', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('gubernamentales. (2)', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Arreglo estético (maquillar y vestir).', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Ataúd de madera.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Sala para 40 personas en circulación. Cremación o Inhumación. (3)', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Urna Homenaje.®', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Acta de Defunción.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Video Homenaje.®', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Asistencia funeraria para mascotas. (4)', style: TextStyle(color: Color(0xff77788E), fontSize: 12),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 20.0, left: 22.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("1 Servicio Funerario de Cremación Directa",
                            style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text('Atención y asesoría personalizada las 24 horas, los 365 días del año.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Traslado en la CDMX y área metropolitana.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Trámites gubernamentales. (2)', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Cremación. Video Homenaje.®', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                            Text('Acta de Defunción.', style: TextStyle(color: Color(0xff77788E), fontSize: 12)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 27.0, bottom: 20.0, left: 22.0, right: 22.0),
                        child: Image.asset('assets/imgs/banner_img.png'),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 22.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("¿Quieres cancelar tu Plan funerario?",
                            style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 30.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Existen ciertas políticas  para poder cancelar tu plan Puedes ver los términos y condiciones de la cancelación haciendo click  en :  ',
                            style: TextStyle(
                              color: Color(0xff77788E)
                            ),
                            children: const <TextSpan>[
                              TextSpan(text: 'Quiero cancelar mi plan', style: TextStyle(
                                color: Color(0xffD2AC5E),
                                decoration: TextDecoration.underline,
                              )),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 38.0),
                    child: Column(
                      children: [
                        Container(
                          height: 182.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(colors: [
                              Color(0xff4F78AE),
                              Color(0xff262158)
                            ], begin: Alignment.bottomCenter,
                              end: Alignment.centerLeft, )
                          ),
                          padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text("Mira tu contrato", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 14.0),
                                      child: Text("Toda la información  y términos de tu plan esta dentro de tu contrato", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.0,
                                      ),),
                                    ),

                                    Container(
                                      width: 115.0,
                                      height: 30.0,
                                      margin: const EdgeInsets.only(top:20.0),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          gradient: themeBaseLight.colorGradientGoldSecondary
                                      ),
                                      child: MaterialButton(
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5.0)
                                        ),
                                        child: Text(
                                          'Ver contacto',
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 12.0,
                                          color: Colors.white),
                                        ),
                                        onPressed: () {
                                        },
                                      ),
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              Image.asset('assets/illustrations/signed_plan.png')
                            ],
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Kit bienvenida", style: TextStyle(
                                color: themeBaseLight.colorSecondaryBlue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600
                            ),),
                          ),
                        ),

                        Image.asset('assets/imgs/banner_tip_img.png'),

                        Container(
                          padding: const EdgeInsets.all(20.0),
                          height: 183.0,
                          margin: const EdgeInsets.only(bottom: 40.0, top: 23.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff364C80).withOpacity(0.03),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Descuentos por tu confianza", style: TextStyle(
                                        color: themeBaseLight.colorSecondaryBlue,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.0),
                                      child: Text("En sofi premiamos tu confianza , por ello es que te ofrecemos 15% descuento en cambio de sala ataúd o urnas.", style: TextStyle(
                                          color: themeBaseLight.colorSecondaryBlue,
                                          fontSize: 9.0,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset('assets/illustrations/discount.png', height: 100.0,)
                            ],
                          ),
                        )


                      ],
                    ),
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

