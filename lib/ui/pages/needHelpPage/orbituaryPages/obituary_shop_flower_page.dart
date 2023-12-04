
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/pageFlowerShopBlanc/widgets/card_product_blanc.dart';

final ThemeLight themeBaseLight = new ThemeLight();

class ObituaryShopFlowerPage extends StatelessWidget {
  const ObituaryShopFlowerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        centerTitle: true,
        title: Text("Obituario")
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(right: 10.0),
          height: 100.0,
          padding: const EdgeInsets.only(left: 45, right: 45,top: 25,bottom: 25),
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
}
