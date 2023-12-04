import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/homeController/home_controller.dart';
import 'package:sofi/domains/entities/MenuModel.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/marketplacePages/widgets/carousel_products.dart';
import 'package:sofi/ui/widgets/card_tip.dart';

import '../../../sofi_icons.dart';
import 'faq_page.dart';

final themeBaseLight = ThemeLight();


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            /*systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color(0xffFCFCFC),
                statusBarBrightness: Brightness.light),*/
            leading: Builder(
                builder: (context) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Ink(
                        padding: const EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff4F78AE).withOpacity(0.07)),
                        child: IconButton(
                          padding: const EdgeInsets.all(0.0),
                          icon: Icon(Icons.short_text_rounded,
                              size: 32.0, color: Color(0xff3E358B)),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
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
                            color: Color(0xff4F78AE).withOpacity(0.07)),
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
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffD2AC5E),
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedIconTheme: IconThemeData(
              color: Color(0xff616F8A),
            ),
            unselectedItemColor: Color(0xff616F8A),
            iconSize: 25.0,
            onTap: _.bottomTapped,
            currentIndex: _.bottomSelectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Sofi.home_icon_nav,), label: ''),
              BottomNavigationBarItem(icon: Icon(Sofi.document_icon_nav,), label: ''),
              BottomNavigationBarItem(icon: Icon(Sofi.notification_icon_nav,), label: ''),
              BottomNavigationBarItem(icon: Icon(Sofi.profile_icon_nav,), label: '')
            ],
          ),
          backgroundColor: Colors.white,
          body: AnnotatedRegion(
            value: SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarBrightness: Brightness.dark),
            child: SafeArea(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExpandablePageView(
                      controller: homeController.pageController,
                      onPageChanged: _.pageChanged,
                      clipBehavior: Clip.none,
                      children: [
                        page1(context),
                        page2(context),
                        page3(context),
                        page4(context)
                        /**/
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}

Widget page1 (BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lunes, 05 Agosto', style: TextStyle(
                color: Color(0xff5E6F8D),
                fontSize: 12.0),),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Hola, ',
                  style: TextStyle(
                      color: themeBaseLight.colorGold,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                ),
                TextSpan(
                    text: "Francisco Martinez",
                    style: TextStyle(
                        color: themeBaseLight.colorSecondaryBlue,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0)),
              ], style: TextStyle(
                  fontFamily: themeBaseLight.primaryFont
              )),
            ),
            Text('Esperamos tengas un excelente día', style: TextStyle(
                color: Color(0xff5E6F8D),
                fontSize: 12.0),),

            Container(
              height: 140.0,
              margin: const EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                  color: Color(0xff4F78FF),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ayuda inmediata", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                      ),),
                      Text("Necesitas ayuda? te vamos apoyar\nEn todo momento",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Text('Sofi', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0)),
                        decoration: BoxDecoration(
                          color: Color(0xffF0C22A),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF0C22A).withOpacity(0.08),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(25.0),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 34.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Añadir a mi Plan", style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),),
                  Text("Ver todos", style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontSize: 13.0)),
                ],
              ),
            ),
            /*SingleChildScrollView(
                      child:
                    )*/
            Container(
              height: 222.0,
              margin: const EdgeInsets.only(top: 26.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFDF4FF),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_market, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Tienda", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Compra productos, servicios y mejora tu plan", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF4F7FF),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_futre_plan, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Planes a futuro", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Visualiza los planes que tenemos para ti y pide información", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF4FFFE),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_buy_plan, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Comprar plan", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Compra los mejores planes para estar protegido", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF5FFF4),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_obituario, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Obituario", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Consulta información del homenaje de tu ser querido", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFCF4),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_market, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Adicionales", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Agrega más servicios o productos a tu plan actual", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFFF4F4),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_futre_plan, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Sucursales", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("Estamos cada vez más cerca de ti", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 222.0,
                    width: 163.0,
                    margin: const EdgeInsets.only(right: 11.0),
                    decoration: BoxDecoration(
                        color: Color(0xffF9F4FF),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Sofi.icon_buy_plan, size: 34.0,),
                        SizedBox(
                          height: 48.0,
                        ),
                        Text("Innovaciones", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                        Text("No nos quedamos atrás , queremos dar un paso adelante", style: TextStyle(
                            fontSize: 10.0
                        ),)
                      ],
                    ),
                  ),
                ],
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),

          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0, top: 34.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tus planes contratados", style: TextStyle(
                    color: themeBaseLight.colorSecondaryBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),),
                Text("Ver todos", style: TextStyle(
                    color: themeBaseLight.colorSecondaryBlue,
                    fontSize: 13.0)),
              ],
            ),

            Container(
              height: 247.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xff000000).withOpacity(0.06),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff676E88).withOpacity(0.07),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 10),
                    ),
                  ]
              ),
              margin: const EdgeInsets.only(top: 28.0),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 45.0,
                            height: 45.0,
                            child: SvgPicture.asset('assets/icons/plan_icon.svg'),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Plan Aniversario",style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: themeBaseLight.colorSecondaryBlue
                          )),
                          Text("Estás protegido", style: TextStyle(
                              fontSize: 10.0,
                              color: Color(0xff5E6F8D)
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 23.0, bottom: 23.0),
                            child: Text("Seguro de vida por \$50,000. (1)", style: TextStyle(
                                fontSize: 12.0,
                                color: themeBaseLight.colorSecondaryBlue
                            ),),
                          )
                        ],
                      ),

                      Column(
                        children: [
                          Text("\$34,040.00",style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: themeBaseLight.colorSecondaryBlue
                          )),
                        ],
                      )

                    ],
                  ),
                  Divider(),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Método de pago",style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: themeBaseLight.colorSecondaryBlue
                          )),

                          Text("Tarjeta de crédito", style: TextStyle(
                              fontSize: 10.0,
                              color: Color(0xff5E6F8D)
                          ),),



                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 30.0,
                                  height: 30.0,
                                  child: SvgPicture.asset('assets/icons/card_icon.svg'),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("**** **** **** 3487",style: TextStyle(
                                        fontSize: 12.0,
                                        color: themeBaseLight.colorSecondaryBlue
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0,),
                                      child: Text("Mauricio López", style: TextStyle(
                                          fontSize: 12.0,
                                          color: themeBaseLight.colorSecondaryBlue
                                      ),),
                                    )
                                  ],
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Text("Cambiar",style: TextStyle(
                                    fontSize: 12.0,
                                    color: themeBaseLight.colorGold
                                )),
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: CarouselProducts(),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0, top: 34.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Obituario", style: TextStyle(
                    color: themeBaseLight.colorSecondaryBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0),),
                Text("Ver todos", style: TextStyle(
                    color: themeBaseLight.colorSecondaryBlue,
                    fontSize: 13.0)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:19.0),
              height: 244,
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  CardPeople(
                    urlAssetImage: "assets/imgs/foto01@3x.png",
                    onPressed: () {
                      Navigator.pushNamed(context, '/ObituaryShopFlowerPage');
                    },
                    name: 'Omar Delfino Rojas',
                    date: '21 de julio 2021', onTapDetail: () {
                    Navigator.pushNamed(context, '/OrbituaryProfilePage');
                  },
                  ),
                  CardPeople(
                    urlAssetImage: "assets/imgs/foto02@3x.png",
                    onPressed: () {  },
                    name: 'Maria Elena Vargas',
                    date: '21 de julio 2021', onTapDetail: () {  },
                  ),
                  CardPeople(
                    urlAssetImage: "assets/imgs/foto03@3x.png",
                    onPressed: () {  },
                    name: 'Vicente Rodriguez',
                    date: '21 de julio 2021', onTapDetail: () {  },
                  ),
                  CardPeople(
                    urlAssetImage: "assets/imgs/foto04@3x.png",
                    onPressed: () {  },
                    name: 'Guadalupe Torres',
                    date: '21 de julio 2021', onTapDetail: () {  },
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget page2 (BuildContext context) {
  return Column(
    children: [
      Container(
        height: 127.0,
        margin: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
        decoration: BoxDecoration(
            color: Color(0xff70C98B),
            borderRadius: BorderRadius.circular(15.0)
        ),
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ya estas protegido", style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold
                ),),
                Text("Puedes hacer uso de tu plan cuando\nLo requieras",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,

                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(child: SvgPicture.asset('assets/illustrations/family_love.svg'), width: 130.0,),
              ],
            )
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Text('Tus planes contratados', style: TextStyle(color: themeBaseLight.colorSecondaryBlue,fontSize: 18.0, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: const EdgeInsets.only(top: 28.0, right: 15, left: 15),
            child: Material(
              child: InkWell(
                onTap:(){
                  Navigator.pushNamed(context, '/PlanDetailPage');
                },
                borderRadius: BorderRadius.circular(10.0),
                child: Ink(
                  height: 126.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xff000000).withOpacity(0.06),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff676E88).withOpacity(0.02),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 10),
                        ),
                      ]
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 45.0,
                                height: 45.0,
                                child: SvgPicture.asset('assets/icons/plan_icon.svg',fit: BoxFit.cover,),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Plan Aniversario",style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  color: themeBaseLight.colorSecondaryBlue
                              )),
                              Text("Estás protegido", style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color(0xff5E6F8D)
                              ),),

                              Padding(
                                padding: const EdgeInsets.only(top: 23.0),
                                child: Text("Seguro de vida por \$50,000. (1)", style: TextStyle(
                                    fontSize: 12.0,
                                    color: themeBaseLight.colorSecondaryBlue
                                ),),
                              )
                            ],
                          ),

                          Column(
                            children: [
                              Row(
                                children: [
                                  Text("\$34,040.00",style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600,
                                      color: themeBaseLight.colorSecondaryBlue
                                  )),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded, size: 15.0,)
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 126.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xff000000).withOpacity(0.06),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff676E88).withOpacity(0.02),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 10),
                  ),
                ]
            ),
            margin: const EdgeInsets.only(top: 28.0, right: 15, left: 15),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 45.0,
                          height: 45.0,
                          child: SvgPicture.asset('assets/icons/plan_icon.svg',fit: BoxFit.cover,),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Plan Aniversario",style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: themeBaseLight.colorSecondaryBlue
                        )),
                        Text("Estás protegido", style: TextStyle(
                            fontSize: 10.0,
                            color: Color(0xff5E6F8D)
                        ),),

                        Padding(
                          padding: const EdgeInsets.only(top: 23.0),
                          child: Text("Seguro de vida por \$50,000. (1)", style: TextStyle(
                              fontSize: 12.0,
                              color: themeBaseLight.colorSecondaryBlue
                          ),),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Text("\$34,040.00",style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                color: themeBaseLight.colorSecondaryBlue
                            )),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(Icons.arrow_forward_ios_rounded, size: 15.0,)
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 23.0, left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                gradient: themeBaseLight.colorGradient90Blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 115,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, left: 20.0, right: 10.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                            'Nuevo plan a futuro legado\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Lorem ipsum dolor sit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight:
                                    FontWeight.normal,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          width: 84,
                          height: 25,
                          margin: const EdgeInsets.only(top:20.0),
                          decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              gradient: themeBaseLight.colorGradientGoldSecondary
                          ),
                          child: MaterialButton(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: StadiumBorder(),
                            child: Text(
                              'Solicitar',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 12.0,),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      margin: EdgeInsets.only(
                          top: 8.0, right: 6.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.close_rounded,
                          size: 14.0,
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0)),
                            primary: Colors.white,
                            backgroundColor: themeBaseLight.colorSecondaryBlue.withOpacity(0.15)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(right: 45.0, top: 10.0),
              child: Align(
                child: Image.asset(
                  'assets/imgs/flowersImg@3x.png',
                  height: 112.0,
                ),
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget page3 (BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Notificaciones", style: TextStyle(
            color: themeBaseLight.colorSecondaryBlue,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
        ),),
        CardTip(themeLight: themeBaseLight),
        Padding(
          padding: const EdgeInsets.only(top: 28.0, bottom: 25.0),
          child: Text("AHORA", style: TextStyle(
              color: themeBaseLight.colorSecondaryBlue,
              fontSize: 16.0,
              fontWeight: FontWeight.w600
          ),),
        ),
        Container(
          height: 252.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff676E88).withOpacity(0.07),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, 10),
                ),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sofi - Servicio Activo 05 agosto, 2021', style: TextStyle(
                                color: themeBaseLight.colorSecondaryBlue,
                                fontSize: 12.0,
                            )),
                          ],
                        ),
                      ),

                      Divider(
                        height: 1.0,
                        color: Color(0xffF0F2FD),
                        thickness: 1.0,
                      ),
                      Expanded(
                        child: Container(

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: Get.width,
                height: 60.0,
                child: TextButton(
                    onPressed: () {},
                    child: Text('Ver seguimiento'),
                )
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0, bottom: 19.0),
          child: Text("AYER", style: TextStyle(
              color: themeBaseLight.colorSecondaryBlue,
              fontSize: 16.0,
              fontWeight: FontWeight.w600
          ),),
        ),
        Container(
          height: 132.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xff676E88).withOpacity(0.07),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, 10),
                ),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Blanc Florería  -  04 agosto, 2021', style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontSize: 12.0,
                            )),
                          ],
                        ),
                      ),

                      Divider(
                        height: 1.0,
                        color: Color(0xffF0F2FD),
                        thickness: 1.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              FlutterLogo(
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('La florería esta preparando tu pedido', style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontSize: 12.0,
                                    )),
                                    Text('Alba - \$2,970.00', style: TextStyle(
                                      color: themeBaseLight.colorSecondaryBlue,
                                      fontSize: 12.0,
                                    )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget page4 (BuildContext context) {

  List<MenuModel> listMenu = [
    MenuModel(icon: Sofi.icon_user, title: 'Datos personales', onTap: (){
      showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft:  Radius.circular(34.0), topRight: Radius.circular(34.0),),
          ),
          backgroundColor: Colors.white,
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Datos personales',
                        style: TextStyle(
                            color: themeBaseLight.colorSecondaryBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0),
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        margin: EdgeInsets.only(
                            top: 8.0, right: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close_rounded,
                            size: 14.0,
                            color: themeBaseLight.colorSecondaryBlue,
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              primary: Colors.white,
                              backgroundColor: Color(0xffE1E6F0)),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 105,
                      height: 110.0,
                      margin: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: <Widget>[

                          Container(
                            width: 90,
                            height: 90,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: new Border.all(
                                  color: Colors.white,
                                  width: 6.0,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.09),
                                    spreadRadius: 6,
                                    blurRadius: 8,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: CircleAvatar(
                                backgroundImage: NetworkImage("https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg")
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: new Border.all(
                                  color: Colors.white,
                                  width: 4.0,
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: themeBaseLight.colorGold,
                                radius: 16.0,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombre completo',
                      contentPadding: EdgeInsets.all(22.0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(7.0)),
                    ),),


                  Padding(
                    padding: const EdgeInsets.only(top:27.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        contentPadding: EdgeInsets.all(22.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7.0)),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:27.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Telefono',
                        contentPadding: EdgeInsets.all(22.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7.0)),
                      ),),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:27.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Fecha nacimiento',
                        contentPadding: EdgeInsets.all(22.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(7.0)),
                      ),
                    ),
                  ),


                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 63,
                    margin: const EdgeInsets.only(top:67.0),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        gradient: themeBaseLight.colorGradientRightBlue
                    ),
                    child: MaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Text(
                        'Guardar informaciónn',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white),
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            );
          });
    }),
    MenuModel(icon: Sofi.icon_card, title: 'Mis tarjetas', onTap: (){

      showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft:  Radius.circular(34.0), topRight: Radius.circular(34.0),),
          ),
          backgroundColor: Colors.white,
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Método de pago',
                        style: TextStyle(
                            color: themeBaseLight.colorSecondaryBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0),
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        margin: EdgeInsets.only(
                            top: 8.0, right: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close_rounded,
                            size: 14.0,
                            color: themeBaseLight.colorSecondaryBlue,
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              primary: Colors.white,
                              backgroundColor: Color(0xffE1E6F0)),
                        ),
                      ),
                    ],
                  ),

                  Image.asset("assets/illustrations/tarjeta.png", fit: BoxFit.contain, width: 428.0, height: 320,),

                  Text(
                    'Sin tarjetas agregadas',
                    style: TextStyle(
                        color: themeBaseLight.colorSecondaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Aun no has agregado un método de pago,\nañade uno para poder hacer compras en sofí',
                      style: TextStyle(
                          color: Color(0xff8B8FA8),
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 63,
                    margin: const EdgeInsets.only(top:67.0),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        gradient: themeBaseLight.colorGradientRightBlue
                    ),
                    child: MaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Text(
                        'Agregar Nueva',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white),
                      ),
                      onPressed: () {
                      },
                    ),
                  ),



                ],
              ),
            );
          });
      /*Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return MyCardsPage();
          }),
        );*/
    }),
    MenuModel(icon: Sofi.setting_icon, title: 'Configuración',onTap: (){
      Navigator.pushNamed(context, '/SettingsPage');
    }),
    MenuModel(icon: Sofi.prevent_icon, title: 'Planes a futuro'),
    MenuModel(icon: Sofi.help_icon, title: 'Preguntas frecuentes', onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return FaqPage();
        }),
      );
    }),
    MenuModel(icon: Sofi.icon_exit, title: 'Cerrar sesión', onTap: (){
      showModalBottomSheet(
          isScrollControlled: true,
          context: context, builder: (context){
        return Container(
          height: 550.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/illustrations/salir.png', width: 300.0, height: 180.0,),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Text(
                  "¿Estas seguro de salir?",
                  style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 80.0),
                child: Text(
                  "Tendrás que volver a iniciar sesión si sales\nDe esta pantalla",
                  style: TextStyle(
                      color: Color(0xff7A8295),
                      fontSize: 16.0,),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomePage');
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: themeBaseLight.colorGradientLeftBlueLight,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 63.0,
                      alignment: Alignment.center,
                      child: Text(
                        'Cerrar sesión',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                ),
              ),
            ],
          ),
        );
      },shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(34.0), topRight: Radius.circular(34.0))
      ));
    }),
  ];

  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg',
                      fit: BoxFit.cover,
                      width: 55.0,
                      height: 55.0,
                    ),
                  ),
                  SizedBox(
                    width: 34.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Hola, Bienvenido\n',
                      style: TextStyle(
                          color: themeBaseLight.colorGold,
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Francisco Estrada',
                          style: TextStyle(
                              color: themeBaseLight.colorSecondaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Divider(),
            ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: listMenu.length,
                itemBuilder: (ctx, index) {
                  return ListTile(
                    onTap: listMenu[index].onTap,
                    minLeadingWidth: 32.0,
                    contentPadding: EdgeInsets.all(5.0),
                    leading: Container(
                      height: double.maxFinite,
                      child: Icon(
                        listMenu[index].icon,
                        size: 18.0,
                        color: themeBaseLight.colorGold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.0,
                      color: Color(0xffB2B2CE),
                    ),
                    title: Text(
                      '${listMenu[index].title}',
                      style: TextStyle(
                          color: themeBaseLight.colorSecondaryBlue),
                    ),
                  );
                }),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 23.0),
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: (){
              },
              child: Ink(
                decoration: BoxDecoration(
                  color: Color(0xffEDF5F5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Sofi.headphone_icon,
                      color: themeBaseLight.colorSecondaryBlue,
                      size: 25,
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    Text(
                      "¿Necesitas ayuda en algo?",
                      style: TextStyle(
                          color: themeBaseLight.colorSecondaryBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 23.0),
                  decoration: BoxDecoration(
                    gradient: themeBaseLight.colorGradient90Blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 115,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 20.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text:
                                'Nuevo plan a futuro legado\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Lorem ipsum dolor sit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.normal,
                                        fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ),


                            Container(
                              width: 84,
                              height: 25,
                              margin: const EdgeInsets.only(top:20.0),
                              decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  gradient: themeBaseLight.colorGradientGoldSecondary
                              ),
                              child: MaterialButton(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: StadiumBorder(),
                                child: Text(
                                  'Solicitar',
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 12.0,),
                                ),
                                onPressed: () {
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          margin: EdgeInsets.only(
                              top: 8.0, right: 10.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.close_rounded,
                              size: 14.0,
                            ),
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)),
                                primary: Colors.white,
                                backgroundColor: themeBaseLight.colorSecondaryBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 55.0, top: 10.0),
                  child: Align(
                    child: Image.asset(
                      'assets/imgs/flowersImg@3x.png',
                      height: 112.0,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );
}


class CardPeople extends StatelessWidget {

   CardPeople(
      {Key? key,
      required this.urlAssetImage,
      required this.name,
      required this.date,
      required this.onPressed,
      required this.onTapDetail,
      this.borderStyle = BorderStyle.solid})
      : super(key: key);

  final String urlAssetImage;
  final String name;
  final String date;
  final VoidCallback onPressed;
  final VoidCallback onTapDetail;
  BorderStyle borderStyle;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 244,
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            color: Color(0xff000000).withOpacity(0.09),
            width: 0.0,
            style: borderStyle
          )
        ),
        child: InkWell(
          onTap: onTapDetail,
          borderRadius: BorderRadius.circular(5),
          child: Ink(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Column(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("$urlAssetImage"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "$date",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff97A1AF)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Container(
                    height: 25.0,
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextButton(
                      onPressed: onPressed,
                      child: Text(
                        "Enviar flores",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffE5B55E)),
                      ),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
