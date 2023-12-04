import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/pageFlowerShopBlanc/widgets/bottomSheet_detail_product.dart';

class CardProductBlanc extends StatelessWidget {
  const CardProductBlanc(
      {Key? key,
        required this.urlAssetImage,
        required this.title,
        required this.onPressed, required this.price})
      : super(key: key);

  final String urlAssetImage;
  final String title;
  final double price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBaseLight = new ThemeLight();
    return InkWell(
      onTap: (){
        bottomSheetDetailProduct(context);
      },
      borderRadius: BorderRadius.circular(10.0),
      child: Ink(
        width: 175.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xff9BA7B5).withOpacity(0.01),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 10),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  child: Image.asset(
                    urlAssetImage,
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 4.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 13.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: Color(0xff5E6F8D),
                      fontWeight: FontWeight.w600,
                        fontSize: 12.0,),
                  ),
                  Container(
                    height: 18.0,
                    child: TextButton(
                      onPressed: onPressed,
                      child: Text(
                        "+Agregar",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12.0,
                            color: themeBaseLight.colorGoldSecondary),
                      ),
                      style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
