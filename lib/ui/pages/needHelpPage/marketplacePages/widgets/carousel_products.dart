import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/marketPlaceController/marketPlace_home_controller.dart';
import 'package:sofi/themes/themeLight.dart';

class CarouselProducts extends StatelessWidget {
  const CarouselProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBaseLight = new ThemeLight();
    return GetBuilder<MarketPlaceHomeController>(
        init: MarketPlaceHomeController(),
        builder: (controller) {
      return CarouselSlider(
        options: CarouselOptions(
            height: 165.0,
            autoPlay: true,
            viewportFraction: 0.92,
            enableInfiniteScroll: false,
            onPageChanged: controller.onChangedIndex),
        items: controller.numbersProducts.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
                    height: 120.0,
                    width: 356.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffEDF5F5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 24.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Dilo con flores",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: themeBaseLight.colorGoldSecondary),
                          ),
                          Text(
                            "La forma más única de expresar\nSentimientos",
                            style: TextStyle(
                                fontSize: 13.0,
                                ),
                          ),
                          Container(
                            width: 120.0,
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 5.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Comprar ahora",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 12.0,
                                        color: themeBaseLight.colorGoldSecondary),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 12.0,
                                  )
                                ],
                              ),
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0.0)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10.0,
                    child: Image.asset(
                      'assets/imgs/flores_banner@3x.png',
                      height: 116.0,
                      width: 123.0,
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      );
    });
  }
}