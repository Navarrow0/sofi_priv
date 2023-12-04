import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/flowerShopBlancController/flower_shop_blanc_controller.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/pageFlowerShopBlanc/widgets/card_product_blanc.dart';
import 'package:sofi/ui/widgets/expansion_tile_custom.dart';

import '../../../../sofi_icons.dart';

final themeBaseLight = ThemeLight();

class FlowerShopBlancPage extends StatelessWidget {
  const FlowerShopBlancPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlowerShopBlancController>(
        init: FlowerShopBlancController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color(0xffFAFAFA),
            appBar: AppBar(
              backgroundColor: Color(0xffFAFAFA),
              automaticallyImplyLeading: false,
              toolbarHeight: 220.0,
              centerTitle: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 16.0,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Align(alignment: Alignment.topCenter,child: Text("Floreria Blanc")),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, bottom: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(11.0)),
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(14.0),
                        labelText: '¿Qué Flores necesitas?',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                          child: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  ExpansionTileCustom(title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Boutique Prim",
                      style: TextStyle(color: Color(0xff30396A)),),
                      Text("General Prim nº 57, Col Juarez, Cuauhtémoc. Cd Mx", style: TextStyle(
                        color: Color(0xff5E6F8D),
                        fontSize: 12,

                      ),)
                    ],
                  ), backgroundColor: Colors.white,
                    headerBackgroundColor: Colors.white,)
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Sofi.home_icon_nav), label: ''),
                BottomNavigationBarItem(icon: Icon(Sofi.notification_icon_nav), label: ''),
                BottomNavigationBarItem(icon: Icon(Sofi.profile_icon_nav), label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      width: 120.0,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Carrito | 20"),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            backgroundColor: themeBaseLight.colorGold,
                            primary: Colors.white,
                            textStyle: TextStyle(fontSize: 12.0)),
                      ),
                    ),
                    label: '')
              ],
              selectedItemColor: themeBaseLight.colorGold,
              unselectedItemColor: Color(0xffB0BED1),
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedFontSize: 0.0,
              unselectedFontSize: 0.0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 14.0, left: 20, right: 20.0),
                        child: Text(
                          "Todas las flores",
                          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    GridView.count(
                      padding: EdgeInsets.only(bottom: 10.0, top: 26.0, left: 12.0, right: 12.0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.76,
                      children: <Widget>[
                        CardProductBlanc(
                            urlAssetImage: 'assets/imgs/flores01@3x.png',
                            title: 'Alba',
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Se ha agregado al carrito'),
                                    ],
                                  ),
                                  backgroundColor: Color(0xff65D08E),
                                  duration: Duration(milliseconds: 1500),
                                  behavior: SnackBarBehavior.floating,
                                  elevation: 0.0,
                                  margin: EdgeInsets.all(0.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(9.0), topRight: Radius.circular(9.0))
                                  ),
                                ),
                              );
                            }, price: 2970.00,),
                        CardProductBlanc(
                            urlAssetImage: 'assets/imgs/flores02@3x.png',
                            title: 'Armonia Blanco',
                            onPressed: () {}, price: 2670.00,),
                        CardProductBlanc(
                            urlAssetImage: 'assets/imgs/flores03@3x.png',
                            title: 'Eternidad',
                            onPressed: () {}, price: 3740.00,),
                        CardProductBlanc(
                            urlAssetImage: 'assets/imgs/flores04@3x.png',
                            title: 'Paz',
                            onPressed: () {}, price: 2670.00,),
                        CardProductBlanc(
                          urlAssetImage: 'assets/imgs/flores05@3x.png',
                          title: 'Alba',
                          onPressed: () {}, price: 2970.00,),
                        CardProductBlanc(
                          urlAssetImage: 'assets/imgs/flores06@3x.png',
                          title: 'Armonia Blanco',
                          onPressed: () {}, price: 2670.00,),
                        CardProductBlanc(
                          urlAssetImage: 'assets/imgs/flores07@3x.png',
                          title: 'Eternidad',
                          onPressed: () {}, price: 3740.00,),
                        CardProductBlanc(
                          urlAssetImage: 'assets/imgs/flores08@3x.png',
                          title: 'Paz',
                          onPressed: () {}, price: 2670.00,)
                      ],
                    )
                  ],
                )
            ),
          );
        }
    );
  }
}
