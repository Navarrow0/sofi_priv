
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'card_product_service.dart';

class ProductsServicesAvailable extends StatelessWidget {
  const ProductsServicesAvailable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 20, right: 20.0),
            child: Text(
              "Productos y servicios disponibles",
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
            CardProductService(
                urlAssetImage: 'assets/imgs/urnas@3x.png',
                title: 'Urnas',
                onPressed: () {}),
            CardProductService(
                urlAssetImage: 'assets/imgs/ataudes@3x.png',
                title: 'Ataudes',
                onPressed: () {}),
            CardProductService(
                urlAssetImage: 'assets/imgs/traslados@3x.png',
                title: 'Traslados',
                onPressed: () {}),
            CardProductService(
                urlAssetImage: 'assets/imgs/exhumacion@3x.png',
                title: 'Exhumación',
                onPressed: () {})
          ],
        )
      ],
    );
  }
}
