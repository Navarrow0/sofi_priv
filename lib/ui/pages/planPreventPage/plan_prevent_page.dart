import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sofi/themes/themeLight.dart';

class PlanPreventPage extends StatelessWidget {
  const PlanPreventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeLight themeLight = new ThemeLight();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Planes Prevent',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0,bottom: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Con solo una llamada deja todo\nen nuestras manos',
              style: TextStyle(
                  color: themeLight.colorSecondaryBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                'Ofrecemos planes flexibles que atienden todos los requerimientos, para que tú te dediques únicamente a rendir un Homenaje® a la vida de tu ser querido.',
                style: TextStyle(
                    color: themeLight.colorDescriptions,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Stack(
              children: [
                Container(
                  height: 266.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: themeLight.shadowColor,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, bottom: 25.0, top: 35.0, right: 35.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Plan a Futuro\n',
                                    style: TextStyle(
                                        color: Color(0xffB3B5CB),
                                        fontSize: 15.0),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Futuro Legado',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  themeLight.colorSecondaryBlue,
                                              fontSize: 18.0)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: SizedBox(
                                    width: 210.0,
                                    child: Text(
                                      'Todos necesitaremos un servicio funerario en el futuro, ¿por qué esperar a que cueste más?',
                                      style: TextStyle(
                                          color: themeLight.colorDescriptions,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0, ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: SizedBox(
                            width: Get.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Icon(Icons.drive_folder_upload_rounded),
                                    style: TextButton.styleFrom(backgroundColor: Color(0xffD9AB4E), primary: Colors.white, shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0)
                                    ), minimumSize: Size(59.0, 45)),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        gradient: themeLight.colorGradientLeftBlueLight
                                    ),
                                    child: MaterialButton(
                                      padding: const EdgeInsets.all(0.0),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Text(
                                        'Más información',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context,
                                            '/PlanPreventDetailPage'
                                        );
                                      },
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25.0),
                  child: Image.asset(
                    "assets/imgs/familia@3x.png",
                    width: 133.0,
                  ),
                  alignment: FractionalOffset.centerRight,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 266.0,
                  margin: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: themeLight.shadowColor,
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, bottom: 25.0, top: 35.0, right: 35.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Plan a Futuro\n',
                                    style: TextStyle(
                                        color: Color(0xffB3B5CB),
                                        fontSize: 15.0),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Futuro Legado',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:
                                              themeLight.colorSecondaryBlue,
                                              fontSize: 18.0)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0),
                                  child: SizedBox(
                                    width: 210.0,
                                    child: Text(
                                      'Todos necesitaremos un servicio funerario en el futuro, ¿por qué esperar a que cueste más?',
                                      style: TextStyle(
                                          color: themeLight.colorDescriptions,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: SizedBox(
                            width: Get.width,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Icon(Icons.drive_folder_upload_rounded),
                                    style: TextButton.styleFrom(backgroundColor: Color(0xffD9AB4E), primary: Colors.white, shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12.0)
                                    ), minimumSize: Size(59.0, 45)),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        gradient: themeLight.colorGradientLeftBlueLight
                                    ),
                                    child: MaterialButton(
                                      padding: const EdgeInsets.all(0.0),
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Text(
                                        'Más información',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context,
                                            '/PlanPreventDetailPage'
                                        );
                                      },
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25.0),
                  child: Image.asset(
                    "assets/imgs/parents.png",
                    width: 133.0,
                  ),
                  alignment: FractionalOffset.centerRight,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
