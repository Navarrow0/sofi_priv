import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/need_help_page.dart';

import '../../sofi_icons.dart';

class BannerWidget extends StatelessWidget {
  final ThemeLight themeBaseLight;
  const BannerWidget({Key? key, required this.themeBaseLight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeContext = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 23.0),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(10.0),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NeedHelpPage();
                }),
              );
            },
            child: Ink(
              decoration: BoxDecoration(
                color: Color(0xffEDF0F5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Sofi.headphone_icon,
                    color: Color(0xff6E78A2),
                    size: 25,
                  ),
                  SizedBox(
                    width: 35.0,
                  ),
                  Text(
                    "¿Necesitas ayuda en algo?",
                    style: TextStyle(
                        color: Color(0xff6E78A2),
                        fontFamily: themeContext.textTheme.headline1!.fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 23.0),
                decoration: BoxDecoration(
                  gradient: themeBaseLight.colorGradient90Blue,
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
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text:
                              'Nuevo plan a futuro legado\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: themeContext
                                      .textTheme
                                      .headline1!
                                      .fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Lorem ipsum dolor sit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                     themeContext
                                          .textTheme
                                          .headline1!
                                          .fontFamily,
                                      fontWeight:
                                      FontWeight.normal,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),


                          Container(
                            width: 83,
                            height: 25,
                            margin: const EdgeInsets.only(top:20.0),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: themeBaseLight.colorGradientGoldSecondary
                            ),
                            child: MaterialButton(
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: StadiumBorder(),
                              child: Text(
                                'Solicitar',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  fontFamily: themeContext.textTheme.headline1!.fontFamily,),
                              ),
                              onPressed: () {
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        margin: EdgeInsets.only(
                            top: 8.0, right: 6.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close_rounded,
                            size: 14.0,
                          ),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0)),
                              primary: Colors.white,
                              backgroundColor: themeBaseLight.colorSecondaryBlue.withOpacity(0.15)),
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
        ],
      ),
    );
  }
}
