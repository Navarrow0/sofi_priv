import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/pageFlowerShopBlanc/widgets/card_product_blanc.dart';
import 'package:sofi/ui/pages/needHelpPage/widgets/shopping_cart.dart';
import 'package:sofi/ui/widgets/card_tip.dart';

import '../../../../sofi_icons.dart';

class PlanPreventHomePage extends StatelessWidget {
  const PlanPreventHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final themeBaseLight = ThemeLight();

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
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
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        automaticallyImplyLeading: false,
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
                Align(alignment: Alignment.topCenter,child: Text("Planes Prevent")),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 15.0, left: 12.0, right: 12.0),
            child: Column(
              children: [

                CardTip(themeLight: themeBaseLight, marginTop: 0.0,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 20, right: 20.0),
                    child: Text(
                      "Planes",
                      style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                GridView.count(
                  padding: EdgeInsets.only(bottom: 10.0, top: 27.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.76,
                  children: <Widget>[
                    CardProductBlanc(
                      urlAssetImage: 'assets/imgs/flores01@3x.png',
                      title: 'Plan Aniversario',
                      onPressed: () {
                      }, price: 2970.00,),
                    CardProductBlanc(
                      urlAssetImage: 'assets/imgs/flores02@3x.png',
                      title: 'Plan Básico Plus',
                      onPressed: () {}, price: 2670.00,),
                    CardProductBlanc(
                      urlAssetImage: 'assets/imgs/flores03@3x.png',
                      title: 'Plan Clásico',
                      onPressed: () {}, price: 3740.00,),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
