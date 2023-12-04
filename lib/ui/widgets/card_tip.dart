import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';

class CardTip extends StatelessWidget {
  const CardTip({Key? key, required this.themeLight,  this.marginTop = 23.0}) : super(key: key);
  final ThemeLight themeLight;
  final marginTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: marginTop),
      decoration: BoxDecoration(
        color: Color(0xffEDF5F5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 135,
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabias que...',
                style: TextStyle(
                    color: themeLight.colorSecondaryBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Sofi te ayuda a agilizar tus trámites\nsin complicaciones',
                  style: TextStyle(
                      color: Color(0xff454E84), fontSize: 12.0),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset('assets/illustrations/banner_tip.png', width: 100.0,),
          )
        ],
      ),
    );
  }
}
