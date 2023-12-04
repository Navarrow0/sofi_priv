
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sofi/ui/pages/needHelpPage/marketplacePages/marketPlace_home_page.dart';

import '../../../../sofi_icons.dart';


class AdditionalHomePage extends StatelessWidget {
  const AdditionalHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
          backgroundColor: Color(0xffFAFAFA),
          centerTitle: true,
          title: Text("Adicionales")
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLANES",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      "Agrega Servicios a tu plan",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0xff30396A)),
                    ),
                  ],
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 23.0),
                  decoration: BoxDecoration(
                    color: Color(0xffEDF5F5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 155,
                  padding: const EdgeInsets.only(left: 28.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Inicia sesión con sofi',
                            style: TextStyle(
                                color: Color(0xff30396A),
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Descubre los beneficios que\ntenemos para ti',
                              style: TextStyle(
                                  color: Color(0xff5E6F8D), fontSize: 12.0),
                            ),
                          ),
                          Container(
                            width: 132,
                            height: 39,
                            margin: const EdgeInsets.only(top: 15.0),
                            decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10.0)),
                                gradient: themeBaseLight.colorGradientRightBlue),
                            child: MaterialButton(
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                'Registrarme',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/illustrations/registro_banner.svg', width: 100.0,)
                    ],
                  ),
                ),

                GridView.count(
                  padding: EdgeInsets.only(
                      bottom: 10.0, top: 26.0,),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.74,
                  children: <Widget>[
                    CardProductAdditional(
                      urlAssetImage: "assets/imgs/musicalizacion@3x.png",
                      onPressed: () {
                        bottomSheetDetailProduct(context);
                      },
                      name: 'Musicalización',
                      date: '\$2,586.00', onTapDetail: () {
                    },
                    ),
                    CardProductAdditional(
                      urlAssetImage: "assets/imgs/cafeteriaa@3x.png",
                      onPressed: () {  },
                      name: 'Cafeteria',
                      date: '\$2,586.00', onTapDetail: () {  },
                    ),
                    CardProductAdditional(
                      urlAssetImage: "assets/imgs/brindis@3x.png",
                      onPressed: () {  },
                      name: 'Brindis por la vida',
                      date: '\$2,586.00', onTapDetail: () {  },
                    ),
                    CardProductAdditional(
                      urlAssetImage: "assets/imgs/concierge@3x.png",
                      onPressed: () {  },
                      name: 'Concierge',
                      date: '\$2,586.00', onTapDetail: () {  },
                    )
                  ],
                )

              ],
            ),
          )
      ),
    );
  }
}


class CardProductAdditional extends StatelessWidget {
  const CardProductAdditional({Key? key, required this.urlAssetImage, required this.name, required this.date, required this.onPressed, required this.onTapDetail}) : super(key: key);

  final String urlAssetImage;
  final String name;
  final String date;
  final VoidCallback onPressed;
  final VoidCallback onTapDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 244,
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          onTap: onTapDetail,
          borderRadius: BorderRadius.circular(5),
          child: Ink(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Column(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("$urlAssetImage")
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:14.0),
                    child: Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Text(
                      "$date",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff97A1AF)
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Divider(
                      height: 1,
                    ),
                  ),

                  Container(
                    height: 25.0,
                    margin: EdgeInsets.only(top: 5.0),
                    child: TextButton(onPressed: onPressed, child: Text(
                      "Mostrar Detalles",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffE5B55E)
                      ),), style: TextButton.styleFrom(padding: EdgeInsets.zero),),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



bottomSheetDetailProduct(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: 680.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                      child: Image.asset('assets/imgs/flores01@3x.png', height: 225.0, width: Get.width, fit: BoxFit.cover, alignment: Alignment.center,)
                  ),
                  Positioned(
                    top: 26.0,
                    right: 24,
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      child: TextButton(onPressed: (){}, child: Icon(Icons.clear_rounded), style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0.0)
                      ),),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 35.0,
                  margin: EdgeInsets.only(left: 12.0, top: 23.0),
                  child: ListView.builder(itemBuilder: (ctx, index){
                    return Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Image.asset('assets/imgs/flores01@3x.png', width: 60.0, fit: BoxFit.cover,)
                      ),
                    );
                  }, shrinkWrap: true, itemCount: 3, scrollDirection: Axis.horizontal, clipBehavior: Clip.none,),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Musicalización", style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xff30396A)
                              ),),

                              Text("\$2,450.00", style: TextStyle(
                                  fontSize: 19.0,
                                  color: Color(0xffD9AB4E)
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.only(left: 20.0),
                                child: ElevatedButton(onPressed: (){}, child: Icon(Sofi.icon_feather_share_2, size: 20.0),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(0.0),
                                      shape: CircleBorder(),
                                      alignment: Alignment.center,
                                      shadowColor: Color(0xff6896DE).withOpacity(0.09),
                                      primary: Color(0xff446197)
                                  ),),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 26.0),
                      child: Text("En J. García López ponemos a su disposición los servicios de musicalización de Homenaje®.",textAlign: TextAlign.justify,
                        style: TextStyle(color: Color(0xff5E6F8D)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text("Entre las opciones que le ofrecemos están:",textAlign: TextAlign.justify,
                        style: TextStyle(color: Color(0xff5E6F8D)),),
                    ),
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Text("Mariachi", style: TextStyle(color: Color(0xffD9AB4E)),),
                        Text("Cuartetos clásicos", style: TextStyle(color: Color(0xffD9AB4E)),),
                        Text("Marimba", style: TextStyle(color: Color(0xffD9AB4E)),),
                        Text("O cualquier otro tipo de música", style: TextStyle(color: Color(0xffD9AB4E)),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: TextButton(
                        onPressed: () {
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff4F78AE),
                                Color(0xff262158)
                              ], begin: Alignment.centerRight,
                                end: Alignment.centerLeft, ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 72.0,
                            alignment: Alignment.center,
                            child: Text(
                              'Agregar adicional a mi plan',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0.0),
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
