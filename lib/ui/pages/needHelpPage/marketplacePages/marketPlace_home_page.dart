import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/marketPlaceController/marketPlace_home_controller.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/marketplacePages/widgets/services.dart';
import 'package:sofi/ui/pages/needHelpPage/widgets/shopping_cart.dart';

import '../../../../sofi_icons.dart';
import 'widgets/carousel_products.dart';
import 'widgets/products_services_available.dart';

final themeBaseLight = ThemeLight();

class MarketPlaceHomePage extends StatelessWidget {
  const MarketPlaceHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<MarketPlaceHomeController>(
        init: MarketPlaceHomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color(0xffFAFAFA),
            appBar: AppBar(
              backgroundColor: Color(0xffFAFAFA),
              automaticallyImplyLeading: false,
              toolbarHeight: 150.0,
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
                      Align(alignment: Alignment.topCenter,child: Text("Productos y servicios")),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, bottom: 15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(11.0)),
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(14.0),
                        labelText: '¿Necesitas algo?',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                          child: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
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
                        onPressed: () {
                          bottomSheetShoppingCart(context);
                        },
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
                  CarouselProducts(),
                  Services(),
                  ProductsServicesAvailable()
                ],
              )
            ),
          );
      }
    );
  }
}