
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/domains/blocs/marketPlaceController/marketPlace_home_controller.dart';
import 'card_product_service.dart';
import 'package:get/get.dart';


class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only( left: 20, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Servicios",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              GetBuilder<MarketPlaceHomeController>(
                  id: 'countsSlider',
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: controller.numbersProducts.map((url) {
                        int index = controller.numbersProducts.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.currentPos == index
                                ? Color.fromRGBO(0, 0, 0, 0.9)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    );
                  }),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          height: 257,
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            physics: BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            itemBuilder: (ctx, index) {
              return Container(
                margin: EdgeInsets.only(right: 12.0),
                child: CardProductService(
                    urlAssetImage: 'assets/imgs/floreria@3x.png',
                    title: 'Servicio Floreria',
                    onPressed: () {
                      Navigator.pushNamed(context, '/FlowerShopBlancPage');
                    }),
              );
            },
            itemCount: 3,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}