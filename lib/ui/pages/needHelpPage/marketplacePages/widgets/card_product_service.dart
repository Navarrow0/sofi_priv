import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/themes/themeLight.dart';

class CardProductService extends StatelessWidget {
  const CardProductService(
      {Key? key,
        required this.urlAssetImage,
        required this.title,
        required this.onPressed})
      : super(key: key);

  final String urlAssetImage;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBaseLight = new ThemeLight();
    return Container(
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
            Container(
              height: 18.0,
              child: TextButton(
                onPressed: onPressed,
                child: Text(
                  "Más información",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 11.0,
                      color: themeBaseLight.colorGoldSecondary),
                ),
                style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
