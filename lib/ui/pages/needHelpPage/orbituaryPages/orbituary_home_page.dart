import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/orbituaryHomeController/orbituary_home_controller.dart';
import 'package:sofi/sofi_icons.dart';
import 'package:sofi/themes/themeLight.dart';

class OrbituaryHomePage extends StatelessWidget {
  const OrbituaryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBaseLight = new ThemeLight();

    return GetBuilder<OrbituaryHomeController>(
        init: OrbituaryHomeController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Color(0xffFAFAFA),
            appBar: AppBar(
                backgroundColor: Color(0xffFAFAFA),
                centerTitle: true,
                title: Text("Obituario")),
            body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SUCURSAL",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            "Todas las sucursales",
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 36.0,
                      margin: const EdgeInsets.only(left: 28.0, top: 30.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        clipBehavior: Clip.none,
                        physics: BouncingScrollPhysics(),
                        children: [
                          ChipCustom(
                              iconData: Sofi.icon_sucursal,
                              title: 'Casa Prim',
                              onPressed: () {}),
                          ChipCustom(
                              iconData: Sofi.icon_sucursal,
                              title: 'Casa Pedregal',
                              onPressed: () {}),
                          ChipCustom(
                              iconData: Sofi.icon_sucursal,
                              title: 'Boutique Prim',
                              onPressed: () {}),
                          ChipCustom(
                              iconData: Sofi.icon_sucursal,
                              title: 'Cervezas',
                              onPressed: () {}),
                          ChipCustom(
                              iconData: Sofi.icon_sucursal,
                              title: 'Otras bebidas',
                              onPressed: () {})
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 15.0),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(top: 23.0),
                            decoration: BoxDecoration(
                              gradient:
                                  themeBaseLight.colorGradientLeftBlueLight,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: 115,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 20.0, right: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Nuevo plan a futuro legado\n',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Lorem ipsum dolor sit',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 83,
                                        height: 25,
                                        margin:
                                            const EdgeInsets.only(top: 20.0),
                                        decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            gradient: themeBaseLight
                                                .colorGradientGoldSecondary),
                                        child: MaterialButton(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                          padding: EdgeInsets.all(0.0),
                                          child: Text(
                                            'Solicitar',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 30.0,
                                    height: 30.0,
                                    margin:
                                        EdgeInsets.only(top: 8.0, right: 6.0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.close_rounded,
                                        size: 14.0,
                                      ),
                                      style: TextButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                          primary: Colors.white,
                                          backgroundColor: themeBaseLight
                                              .colorSecondaryBlue
                                              .withOpacity(0.15)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 45.0, top: 10.0),
                            child: Align(
                              child: Image.asset(
                                'assets/imgs/flowersImg@3x.png',
                                height: 112.0,
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GridView.count(
                      padding: EdgeInsets.only(
                          bottom: 10.0, top: 26.0, left: 12.0, right: 12.0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.74,
                      children: <Widget>[
                        CardPeople(
                          urlAssetImage: "assets/imgs/foto01@3x.png",
                          onPressed: () {
                            Navigator.pushNamed(context, '/ObituaryShopFlowerPage');
                          },
                          name: 'Omar Delfino Rojas',
                          date: '21 de julio 2021', onTapDetail: () {
                            Navigator.pushNamed(context, '/OrbituaryProfilePage');
                        },
                        ),
                        CardPeople(
                          urlAssetImage: "assets/imgs/foto02@3x.png",
                          onPressed: () {  },
                          name: 'Maria Elena Vargas',
                          date: '21 de julio 2021', onTapDetail: () {  },
                        ),
                        CardPeople(
                          urlAssetImage: "assets/imgs/foto03@3x.png",
                          onPressed: () {  },
                          name: 'Vicente Rodriguez',
                          date: '21 de julio 2021', onTapDetail: () {  },
                        ),
                        CardPeople(
                          urlAssetImage: "assets/imgs/foto04@3x.png",
                          onPressed: () {  },
                          name: 'Guadalupe Torres',
                          date: '21 de julio 2021', onTapDetail: () {  },
                        )
                      ],
                    )
                  ],
                )),
          );
        });
  }
}

class ChipCustom extends StatelessWidget {
  const ChipCustom(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final IconData iconData;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 9.0),
      child: ActionChip(
        elevation: 8,
        shadowColor: Color(0xff8194BE).withOpacity(0.05),
        backgroundColor: Colors.white,
        labelPadding: EdgeInsets.all(2.0),
        padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4, top: 4),
        avatar: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              iconData,
              size: 17.0,
              color: Color(0xffE8BD70),
            )),
        label: Text(
          "$title",
          style: TextStyle(fontSize: 12.0, fontFamily: 'Poppins'),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class CardPeople extends StatelessWidget {
  const CardPeople({Key? key, required this.urlAssetImage, required this.name, required this.date, required this.onPressed, required this.onTapDetail}) : super(key: key);

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
                      "Enviar flores",
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
